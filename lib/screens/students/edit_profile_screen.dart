import 'package:bvrit/screens/students/granted_screen.dart';
import 'package:bvrit/screens/students/permission_details.dart';
import 'package:bvrit/screens/students/profile_screen.dart';
import 'package:bvrit/screens/students/request_screen.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

import '../../main.dart';
import '../../widgets/requesttile.dart';
import 'edit_profile_screen.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: height * 0.1,
        backgroundColor: Color(0xff03045e),
        centerTitle: true,
        elevation: 0,
        title: const Text(
          "Edit Profile",
          style: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontSize: 20,
            fontFamily: "Barlow",
            fontWeight: FontWeight.w600,
          ),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
            )),
      ),
      backgroundColor: const Color(0xff03045E),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                height: height * 1.2,
                width: width,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Positioned(
                      top: height * 0.1,
                      child: Container(
                        height: height * 1.2,
                        width: width,
                        decoration: BoxDecoration(
                          // borderRadius: BorderRadius.circular(25),
                          color: Color(0xffCAF0F8),
                        ),
                        child: Center(
                          child: SizedBox(
                            width: width * 0.85,
                            child: Column(
                              children: [
                                SizedBox(
                                  height: width * 0.2,
                                ),
                                Text(
                                  "Change picture",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontFamily: "Barlow",
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Name",
                                    style: TextStyle(
                                      color: Color(0xff03045e),
                                      fontSize: width * 0.04,
                                      fontFamily: "Barlow",
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  height: height * 0.06,
                                  width: width * 0.85,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 1,
                                      color: Color(0xff03045e),
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                    color: Color(0xffCAF0F8),
                                  ),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      hintText: "User Name",
                                      hintStyle: TextStyle(
                                          fontFamily: 'Barlow',
                                          fontWeight: FontWeight.w400,
                                          fontSize: width * 0.038,
                                          color: Color(0xff000000)),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(
                                            width * 0.0121),
                                        borderSide: BorderSide.none,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Roll no",
                                    style: TextStyle(
                                      color: Color(0xff03045e),
                                      fontSize: width * 0.04,
                                      fontFamily: "Barlow",
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  height: height * 0.06,
                                  width: width * 0.85,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 1,
                                      color: Color(0xff03045e),
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                    color: Color(0xffCAF0F8),
                                  ),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      hintText: "20211A6604",
                                      hintStyle: TextStyle(
                                          fontFamily: 'Barlow',
                                          fontWeight: FontWeight.w400,
                                          fontSize: width * 0.038,
                                          color: Color(0xff000000)),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(
                                            width * 0.0121),
                                        borderSide: BorderSide.none,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Branch",
                                    style: TextStyle(
                                      color: Color(0xff03045e),
                                      fontSize: width * 0.04,
                                      fontFamily: "Barlow",
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  height: height * 0.06,
                                  width: width * 0.85,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 1,
                                      color: Color(0xff03045e),
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                    color: Color(0xffCAF0F8),
                                  ),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      hintText: "CSM",
                                      hintStyle: TextStyle(
                                          fontFamily: 'Barlow',
                                          fontWeight: FontWeight.w400,
                                          fontSize: width * 0.038,
                                          color: Color(0xff000000)),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(
                                            width * 0.0121),
                                        borderSide: BorderSide.none,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Contact number(Student)",
                                    style: TextStyle(
                                      color: Color(0xff03045e),
                                      fontSize: width * 0.04,
                                      fontFamily: "Barlow",
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  height: height * 0.06,
                                  width: width * 0.85,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 1,
                                      color: Color(0xff03045e),
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                    color: Color(0xffCAF0F8),
                                  ),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      hintText: "9010529965",
                                      hintStyle: TextStyle(
                                          fontFamily: 'Barlow',
                                          fontWeight: FontWeight.w400,
                                          fontSize: width * 0.038,
                                          color: Color(0xff000000)),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(
                                            width * 0.0121),
                                        borderSide: BorderSide.none,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Contact number(Parent)",
                                    style: TextStyle(
                                      color: Color(0xff03045e),
                                      fontSize: width * 0.04,
                                      fontFamily: "Barlow",
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  height: height * 0.06,
                                  width: width * 0.85,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 1,
                                      color: Color(0xff03045e),
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                    color: Color(0xffCAF0F8),
                                  ),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      hintText: "9963194190",
                                      hintStyle: TextStyle(
                                          fontFamily: 'Barlow',
                                          fontWeight: FontWeight.w400,
                                          fontSize: width * 0.038,
                                          color: Color(0xff000000)),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(
                                            width * 0.0121),
                                        borderSide: BorderSide.none,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Day Scholar/Hosteler",
                                    style: TextStyle(
                                      color: Color(0xff03045e),
                                      fontSize: width * 0.04,
                                      fontFamily: "Barlow",
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  height: height * 0.06,
                                  width: width * 0.85,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 1,
                                      color: Color(0xff03045e),
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                    color: Color(0xffCAF0F8),
                                  ),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      hintText: "Day Scholar",
                                      hintStyle: TextStyle(
                                          fontFamily: 'Barlow',
                                          fontWeight: FontWeight.w400,
                                          fontSize: width * 0.038,
                                          color: Color(0xff000000)),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(
                                            width * 0.0121),
                                        borderSide: BorderSide.none,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Container(
                                  width: width * 0.65,
                                  height: 51,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0x3f000000),
                                        blurRadius: 4,
                                        offset: Offset(0, 4),
                                      ),
                                    ],
                                    color: Color(0xff030359),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Update",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontFamily: "Lato",
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: height * 0.02,
                      child: GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: width * 0.35,
                          width: width * 0.35,
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 2,
                              color: const Color(0xffCAF0F8),
                            ),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.asset(
                              "assets/images/profile.jpeg",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
