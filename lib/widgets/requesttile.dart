import 'package:flutter/material.dart';

class RequestTile extends StatefulWidget {
  const RequestTile({Key? key}) : super(key: key);

  @override
  State<RequestTile> createState() => _RequestTileState();
}

class _RequestTileState extends State<RequestTile> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.all(2),
      width: width * 0.9,
      height: height * 0.13,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
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
