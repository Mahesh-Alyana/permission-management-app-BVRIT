import 'package:flutter/material.dart';

class StudentRequestTile extends StatefulWidget {
  const StudentRequestTile({Key? key}) : super(key: key);

  @override
  State<StudentRequestTile> createState() => _StudentRequestTileState();
}

class _StudentRequestTileState extends State<StudentRequestTile> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.all(2),
      width: width * 0.9,
      height: height * 0.13,
      decoration: BoxDecoration(
        border: Border.all(width: 2, color: Color(0xffBCBCBC)),
        borderRadius: BorderRadius.circular(8),
        color: Color(0xffCAF0F8),
        boxShadow: [
          BoxShadow(
            color: Color(0x2d000000),
            blurRadius: 35,
            offset: Offset(0, 7.24),
          ),
        ],
      ),
      child: Column(
        children: [
          Align(
            alignment: Alignment.center,
            child: Text(
              "23-03-2022",
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontFamily: "Barlow",
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(
            width: width * 0.82,
            child: Wrap(children: [
              Text(
                "Reason :",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
              Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.black,
                ),
                maxLines: 4,
              ),
            ]),
          )
        ],
      ),
    );
  }
}

class AdminRequestTile extends StatefulWidget {
  const AdminRequestTile({Key? key}) : super(key: key);

  @override
  State<AdminRequestTile> createState() => _AdminRequestTileState();
}

class _AdminRequestTileState extends State<AdminRequestTile> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.all(4),
      width: width * 0.9,
      height: height * 0.13,
      decoration: BoxDecoration(
        border: Border.all(width: 2, color: Color(0xffBCBCBC)),
        borderRadius: BorderRadius.circular(8),
        color: Color(0xffCAF0F8),
        boxShadow: [
          BoxShadow(
            color: Color(0x2d000000),
            blurRadius: 35,
            offset: Offset(0, 7.24),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: SizedBox(
              width: width * 0.65,
              child: Row(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "STUDENT NAME",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontFamily: "Barlow",
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "(20211A6604)",
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 15,
                        fontFamily: "Barlow",
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: SizedBox(
              width: width * 0.5,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
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
                  SizedBox(),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "CSM",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontFamily: "Barlow",
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
