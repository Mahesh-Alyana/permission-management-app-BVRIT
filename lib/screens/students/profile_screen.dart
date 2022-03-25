import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool _isDayScholar = true;
  bool _isHosteler = false;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffCAF0F8),
        centerTitle: true,
        elevation: 0,
        title: const Text(
          "PROFILE",
          style: TextStyle(
            color: Color(0xff03045e),
            fontSize: 20,
            fontFamily: "Barlow",
            fontWeight: FontWeight.w600,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: SvgPicture.asset("assets/images/backIcon.svg"),
        ),
      ),
      backgroundColor: Color(0xffCAF0F8),
      body: ListView(
        children: [
          SizedBox(
            height: height,
            width: width,
            child: Column(
              children: [
                // SizedBox(
                //   height: height * 0.02,
                // ),
                SizedBox(
                  height: height * 0.08,
                ),
                Container(
                  height: width * 0.35,
                  width: width * 0.35,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset(
                      "assets/images/profile.jpeg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.08,
                ),
                SizedBox(
                  height: height * 0.25,
                  width: width * 0.9,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        width: width * 0.9,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "NAME",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontFamily: "Barlow",
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Container(
                              width: width * 0.5,
                              height: height * 0.07,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0x33000000),
                              ),
                              child: Center(
                                child: Text(
                                  "MAHESH",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontFamily: "Barlow",
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: width * 0.9,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "ROLL NO",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontFamily: "Barlow",
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Container(
                              width: width * 0.5,
                              height: height * 0.07,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0x33000000),
                              ),
                              child: Center(
                                child: Text(
                                  "20211A6604",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontFamily: "Barlow",
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: width * 0.9,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "BRANCH",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontFamily: "Barlow",
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Container(
                              width: width * 0.5,
                              height: height * 0.07,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0x33000000),
                              ),
                              child: Center(
                                child: Text(
                                  "CSM",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontFamily: "Barlow",
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: width * 0.9,
                    height: 57,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0x33000000),
                    ),
                    child: Stack(
                      children: [
                        Container(
                          width: width * 0.9,
                          height: 57,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: height * 0.045,
                                width: width * 0.38,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.transparent,
                                ),
                                child: Center(
                                    child: Text(
                                  _isDayScholar ? "           " : "DAY SCHOLAR",
                                  style: TextStyle(
                                    color: _isDayScholar
                                        ? Colors.white
                                        : Colors.black,
                                    fontSize: width * 0.04,
                                    fontFamily: "Barlow",
                                    fontWeight: FontWeight.w700,
                                  ),
                                )),
                              ),
                              Container(
                                height: height * 0.045,
                                width: width * 0.38,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.transparent,
                                ),
                                child: Center(
                                    child: Text(
                                  _isHosteler ? "       " : "HOSTLER",
                                  style: TextStyle(
                                    color: _isHosteler
                                        ? Colors.white
                                        : Colors.black,
                                    fontSize: width * 0.04,
                                    fontFamily: "Barlow",
                                    fontWeight: FontWeight.w700,
                                  ),
                                )),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: AnimatedAlign(
                            alignment: _isDayScholar == true
                                ? Alignment.centerLeft
                                : Alignment.centerRight,
                            duration: Duration(milliseconds: 200),
                            child: Container(
                              width: width * 0.43,
                              height: 42,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xff03045e),
                              ),
                              child: Center(
                                  child: Text(
                                _isDayScholar == true
                                    ? "DAY SCHOLAR"
                                    : "HOSTLER",
                                style: TextStyle(
                                  fontFamily: "Barlow",
                                  color: Color(0xFFFFFFFF),
                                  fontWeight: FontWeight.w700,
                                  fontSize: width * 0.04,
                                ),
                              )),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: width * 0.85,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0x3f000000),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                      ),
                    ],
                    color: const Color(0xff03045e),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: MaterialButton(
                      onPressed: () {},
                      child: const Text(
                        "SIGN OUT",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: "Barlow",
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
