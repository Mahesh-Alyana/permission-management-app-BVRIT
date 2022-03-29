import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RequestScreen extends StatefulWidget {
  const RequestScreen({Key? key}) : super(key: key);

  @override
  State<RequestScreen> createState() => _RequestScreenState();
}

class _RequestScreenState extends State<RequestScreen> {
  late DateTime pickedDate;
  late TimeOfDay time;
  @override
  void initState() {
    super.initState();
    pickedDate = DateTime.now();
    time = TimeOfDay.now();
  }

  _pickDate() async {
    DateTime? date = await showDatePicker(
      context: context,
      firstDate: DateTime(DateTime.now().year - 5),
      lastDate: DateTime(DateTime.now().year + 5),
      initialDate: pickedDate,
    );
    if (date != null)
      // ignore: curly_braces_in_flow_control_structures
      setState(() {
        pickedDate = date;
      });
  }

  _pickTime() async {
    TimeOfDay? t = await showTimePicker(context: context, initialTime: time);
    if (t != null) {
      setState(() {
        time = t;
      });
    }
  }

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
          "REQUEST A PERMISSION",
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
      backgroundColor: const Color(0xffCAF0F8),
      body: ListView(
        children: [
          SizedBox(
            width: width,
            child: Column(
              children: [
                // SizedBox(
                //   height: height * 0.02,
                // ),
                SizedBox(
                  height: height * 0.05,
                ),
                SizedBox(
                  height: height * 0.7,
                  width: width * 0.9,
                  child: Column(
                    children: [
                      Container(
                        height: height * 0.07,
                        width: width * 0.85,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: Color(0xff03045e),
                          ),
                          borderRadius: BorderRadius.circular(8),
                          color: Color(0xffCAF0F8),
                        ),
                        child: Center(
                          child: ListTile(
                            title: Text(
                                "Date: ${pickedDate.year}, ${pickedDate.month}, ${pickedDate.day}"),
                            trailing: const Icon(Icons.keyboard_arrow_down),
                            onTap: _pickDate,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Container(
                        height: height * 0.07,
                        width: width * 0.85,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: Color(0xff03045e),
                          ),
                          borderRadius: BorderRadius.circular(8),
                          color: Color(0xffCAF0F8),
                        ),
                        child: Center(
                          child: ListTile(
                            title:
                                Text("From Time: ${time.hour}:${time.minute}"),
                            trailing: const Icon(Icons.keyboard_arrow_down),
                            onTap: _pickTime,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Container(
                        height: height * 0.07,
                        width: width * 0.85,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: Color(0xff03045e),
                          ),
                          borderRadius: BorderRadius.circular(8),
                          color: Color(0xffCAF0F8),
                        ),
                        child: Center(
                          child: ListTile(
                            title: Text(
                                "To Time: ${time.hour}:${time.minute}              (optional)"),
                            trailing: const Icon(Icons.keyboard_arrow_down),
                            onTap: _pickTime,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "REASON",
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
                        height: height * 0.15,
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
                          maxLines: 5,
                          decoration: InputDecoration(
                            hintText: "Reason",
                            hintStyle: TextStyle(
                                fontFamily: 'Barlow',
                                fontWeight: FontWeight.w400,
                                fontSize: width * 0.038,
                                color: Color(0xff000000)),
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.circular(width * 0.0121),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Row(
                          children: [
                            Text(
                              "PROOF",
                              style: TextStyle(
                                  fontFamily: 'Barlow',
                                  fontWeight: FontWeight.w800,
                                  fontSize: width * 0.038,
                                  color: Color(0xff000000)),
                            ),
                            Text(
                              "  (If any)",
                              style: TextStyle(
                                  fontFamily: 'Barlow',
                                  fontWeight: FontWeight.w400,
                                  fontSize: width * 0.025,
                                  color: Color(0xff000000)),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: height * 0.07,
                        width: width * 0.85,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: Color(0xff03045e),
                          ),
                          borderRadius: BorderRadius.circular(8),
                          color: Color(0xffCAF0F8),
                        ),
                        child: GestureDetector(
                          onTap: () {},
                          child: Container(
                              width: width * 0.3,
                              height: 35,
                              decoration: BoxDecoration(
                                // borderRadius: BorderRadius.circular(40),
                                color: Color(0x727abbea),
                              ),
                              child: Icon(Icons.file_upload_outlined)),
                        ),
                      )
                    ],
                  ),
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
                        "REQUEST FOR PERMISSION",
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
