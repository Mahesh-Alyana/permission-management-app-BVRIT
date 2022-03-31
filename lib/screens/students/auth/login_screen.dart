import 'dart:convert';

import 'package:bvrit/screens/students/home_screen.dart';
import 'package:bvrit/screens/students/auth/signup.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import '../../../api/api_services.dart';
import '../../../models/login_request_model.dart';
import '../../../models/login_response_model.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  Future<LoginResponseModel> login(String email, String password) async {
    String url = "${Api.host}/auth/jwt/create/";
    LoginRequestModel requestModel =
        LoginRequestModel(email: email, password: password);
    final response = await http.post(Uri.parse(url),
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode(requestModel.toJson()));
    if (response.statusCode == 200 || response.statusCode == 400) {
      Map<String, dynamic> output = json.decode(response.body);
      SharedPreferences sharedPreferences =
          await SharedPreferences.getInstance();
      sharedPreferences.setString("token", output['access']);
      print(output['access']);
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => HomeScreen()),
          (route) => false);
      return LoginResponseModel.fromJson(
        json.decode(response.body),
      );
    } else {
      Navigator.pop(context);
      showDialog(
          barrierDismissible: false,
          context: context,
          builder: (context) {
            return AlertDialog(
              content: Text(
                json.decode(response.body)["detail"],
              ),
              actions: [
                TextButton(
                    onPressed: () {
                      // Navigator.pop(context);
                      Navigator.pop(context);
                    },
                    child: Text("Ok"))
              ],
            );
          });
      throw Exception('Failed to load data!');
    }
  }

  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  TextEditingController _emailTC = TextEditingController();
  TextEditingController _passwordTC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Color(0xffA3DEEB),
        body: ListView(
          children: [
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                width: width * 0.74,
                height: height,
                child: Form(
                  key: formkey,
                  child: Column(
                    children: [
                      SizedBox(
                        height: height * 0.35,
                      ),
                      const Text(
                        "Log in to your account",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Email",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        width: width * 0.74,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Color(0xffffffff),
                        ),
                        child: TextFormField(
                          controller: _emailTC,
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            focusColor: Colors.white,
                            hintText: "Enter your Mail ID",
                            hintStyle: TextStyle(
                              fontFamily: 'Barlow',
                              fontWeight: FontWeight.w400,
                              fontSize: width * 0.038,
                              color: const Color(0xff000000),
                            ),
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.circular(width * 0.0121),
                                borderSide: BorderSide.none),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Password",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        width: width * 0.74,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Color(0xffffffff),
                        ),
                        child: TextFormField(
                          controller: _passwordTC,
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            focusColor: Colors.white,
                            hintText: "Enter your Password",
                            hintStyle: TextStyle(
                              fontFamily: 'Barlow',
                              fontWeight: FontWeight.w400,
                              fontSize: width * 0.038,
                              color: const Color(0xff000000),
                            ),
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.circular(width * 0.0121),
                                borderSide: BorderSide.none),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      // const Align(
                      //   alignment: Alignment.centerLeft,
                      //   child: Text(
                      //     "Forgot password?",
                      //     style: TextStyle(
                      //       fontWeight: FontWeight.w600,
                      //       color: Colors.black,
                      //       fontSize: 16,
                      //     ),
                      //   ),
                      // ),
                      SizedBox(
                        height: height * 0.15,
                      ),
                      Container(
                        width: width * 0.5,
                        height: 51,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: const [
                            BoxShadow(
                              color: Color(0x3f000000),
                              blurRadius: 4,
                              offset: Offset(0, 4),
                            ),
                          ],
                          color: const Color(0xff030359),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: MaterialButton(
                            onPressed: () async {
                              if (formkey.currentState!.validate()) {
                                final String email = _emailTC.text;
                                final String password = _passwordTC.text;
                                showDialog(
                                    context: context,
                                    useRootNavigator: false,
                                    useSafeArea: false,
                                    builder: (context) {
                                      return Center(
                                        child: CircularProgressIndicator(
                                          color: Color(0xffff0000),
                                        ),
                                      );
                                    });
                                await login(email, password);
                              }
                            },
                            child: const Center(
                              child: Text(
                                "Log in",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontFamily: "Lato",
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      // const SizedBox(
                      //   height: 5,
                      // ),
                      Expanded(
                        child: Align(
                          alignment: FractionalOffset.bottomCenter,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Text(
                                "Don't have an account yet?",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(width: 6),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushAndRemoveUntil(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              SignUpPassword()),
                                      (route) => false);
                                },
                                child: Text(
                                  "Sign up",
                                  style: TextStyle(
                                    color: Color(0xff030359),
                                    fontSize: 14,
                                    fontFamily: "Roboto",
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.1,
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
