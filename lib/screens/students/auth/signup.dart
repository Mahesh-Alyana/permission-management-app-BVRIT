import 'package:bvrit/screens/students/auth/login_screen.dart';
import 'package:bvrit/screens/students/home_screen.dart';
import 'package:flutter/material.dart';

class SignUpPassword extends StatefulWidget {
  const SignUpPassword({Key? key}) : super(key: key);

  @override
  State<SignUpPassword> createState() => _SignUpPasswordState();
}

class _SignUpPasswordState extends State<SignUpPassword> {
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
                child: Column(
                  children: [
                    SizedBox(
                      height: height * 0.3,
                    ),
                    const Text(
                      "Create an account",
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
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Confirm Password",
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
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          focusColor: Colors.white,
                          hintText: "Re-enter your Password",
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

                    SizedBox(
                      height: height * 0.17,
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
                          onPressed: () {
                            Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignUpDetails()),
                                (route) => true);
                          },
                          child: Center(
                            child: Text(
                              "Next",
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
                              "Already have an account?",
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
                                        builder: (context) => LoginScreen()),
                                    (route) => false);
                              },
                              child: Text(
                                "Log in",
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
            )
          ],
        ));
  }
}

class SignUpDetails extends StatefulWidget {
  const SignUpDetails({Key? key}) : super(key: key);

  @override
  State<SignUpDetails> createState() => _SignUpDetailsState();
}

class _SignUpDetailsState extends State<SignUpDetails> {
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
                child: Column(
                  children: [
                    SizedBox(
                      height: height * 0.3,
                    ),
                    const Text(
                      "Create an account",
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
                        "Roll no",
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
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          focusColor: Colors.white,
                          hintText: "Enter your Roll no",
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
                        "First name",
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
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          focusColor: Colors.white,
                          hintText: "Enter your First name",
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
                        "Last name",
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
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          focusColor: Colors.white,
                          hintText: "Enter your Last name",
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

                    SizedBox(
                      height: height * 0.17,
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
                          onPressed: () {
                            Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignUpcontactinfo()),
                                (route) => true);
                          },
                          child: Center(
                            child: Text(
                              "Next",
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
                            Text(
                              "Already have an account?",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(width: 6),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LoginScreen()),
                                    (route) => false);
                              },
                              child: Text(
                                "Log in",
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
            )
          ],
        ));
  }
}

class SignUpcontactinfo extends StatefulWidget {
  const SignUpcontactinfo({Key? key}) : super(key: key);

  @override
  State<SignUpcontactinfo> createState() => _SignUpcontactinfoState();
}

class _SignUpcontactinfoState extends State<SignUpcontactinfo> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: const Color(0xffA3DEEB),
        body: ListView(
          children: [
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                width: width * 0.74,
                height: height,
                child: Column(
                  children: [
                    SizedBox(
                      height: height * 0.3,
                    ),
                    const Text(
                      "Create an account",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Contact number(Student)",
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
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          focusColor: Colors.white,
                          hintText: "Enter your Contact number(Student)",
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
                        "Contact number(Parent)",
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
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          focusColor: Colors.white,
                          hintText: "Enter your Contact number(Parent)",
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
                        "Hostler/Day Scholar",
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
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          focusColor: Colors.white,
                          hintText: "Type of student",
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

                    SizedBox(
                      height: height * 0.17,
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
                          onPressed: () {
                            Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomeScreen()),
                                (route) => false);
                          },
                          child: Center(
                            child: Text(
                              "Sign up",
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
                            Text(
                              "Already have an account?",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(width: 6),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LoginScreen()),
                                    (route) => false);
                              },
                              child: Text(
                                "Log in",
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
            )
          ],
        ));
  }
}
