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
        backgroundColor: Color(0xffCAF0F8),
        centerTitle: true,
        elevation: 0,
        title: const Text(
          "REQUEST A PERMISSION",
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
                  height: height * 0.08,
                ),
                SizedBox(
                  height: height * 0.7,
                  width: width * 0.9,
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "FROM",
                          style: TextStyle(
                            color: const Color(0xff03045e),
                            fontSize: width * 0.04,
                            fontFamily: "Barlow",
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: height * 0.07,
                        width: width * 0.85,
                        decoration: const BoxDecoration(
                          color: Color(0xffffffff),
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
                        decoration: const BoxDecoration(
                          color: Color(0xffffffff),
                        ),
                        child: Center(
                          child: ListTile(
                            title: Text("Time: ${time.hour}:${time.minute}"),
                            trailing: const Icon(Icons.keyboard_arrow_down),
                            onTap: _pickTime,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "TO",
                          style: TextStyle(
                            color: Color(0xff03045e),
                            fontSize: width * 0.04,
                            fontFamily: "Barlow",
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: height * 0.07,
                        width: width * 0.85,
                        decoration: const BoxDecoration(
                          color: Color(0xffffffff),
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
                        decoration: const BoxDecoration(
                          color: Color(0xffffffff),
                        ),
                        child: Center(
                          child: ListTile(
                            title: Text("Time: ${time.hour}:${time.minute}"),
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
                        color: Colors.white,
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
                        "REQUEST A PERMISSION",
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
