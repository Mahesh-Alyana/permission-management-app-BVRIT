import 'package:bvrit/screens/admins/edit_profile_screen.dart';
import 'package:bvrit/screens/admins/granted_permissions.dart';
import 'package:bvrit/screens/admins/permission_details.dart';
import 'package:bvrit/screens/admins/profile_screen.dart';
import 'package:bvrit/screens/students/request_screen.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import '../../main.dart';
import '../../widgets/requesttile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      RemoteNotification? notification = message.notification;
      AndroidNotification? android = message.notification?.android;
      if (notification != null && android != null) {
        flutterLocalNotificationsPlugin.show(
            notification.hashCode,
            notification.title,
            notification.body,
            NotificationDetails(
              android: AndroidNotificationDetails(
                channel.id,
                channel.name,
                // channel.description,
                color: Colors.blue,
                playSound: true,
                icon: '@mipmap/ic_launcher',
              ),
            ));
      }
    });

    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      print('A new onMessageOpenedApp event was published!');
      RemoteNotification? notification = message.notification;
      AndroidNotification? android = message.notification?.android;
      if (notification != null && android != null) {
        showDialog(
            context: context,
            builder: (_) {
              return AlertDialog(
                title: Text("${notification.title}"),
                content: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [Text("${notification.body}")],
                  ),
                ),
              );
            });
      }
    });
  }

  void showNotification() {
    flutterLocalNotificationsPlugin.show(
        0,
        "Testing",
        "How you doin ?",
        NotificationDetails(
            android: AndroidNotificationDetails(channel.id, channel.name,
                //  channel.description,
                importance: Importance.high,
                color: Colors.blue,
                playSound: true,
                icon: '@mipmap/ic_launcher')));
  }

  int itemcount = 2;
  bool _isRequested = true;
  bool _isGranted = false;
  void _request() {
    setState(() {
      if (_isRequested == false) {
        itemcount = 2;
        _isRequested = true;
        _isGranted = false;
      }
    });
  }

  void _granted() {
    setState(() {
      if (_isGranted == false) {
        itemcount = 5;

        _isRequested = false;
        _isGranted = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xff03045E),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                height: height * 0.7 + height * 0.15 * itemcount,
                width: width,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Positioned(
                      top: height * 0.15,
                      child: Container(
                        height: height * 0.7 + height * 0.15 * itemcount,
                        width: width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Color(0xffCAF0F8),
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: width * 0.2,
                            ),
                            Text(
                              "USERNAME",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontFamily: "Barlow",
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              "EMP ID",
                              style: TextStyle(
                                color: Color(0xad000000),
                                fontSize: 15,
                                fontFamily: "Barlow",
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              "CSM",
                              style: TextStyle(
                                color: Color(0xad000000),
                                fontSize: 15,
                                fontFamily: "Barlow",
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(
                              height: 30,
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          GestureDetector(
                                            onTap: () => _request(),
                                            child: Container(
                                              height: height * 0.045,
                                              width: width * 0.38,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                color: Colors.transparent,
                                              ),
                                              child: Center(
                                                  child: Text(
                                                _isRequested
                                                    ? "           "
                                                    : "PERMISSIONS",
                                                style: TextStyle(
                                                  color: _isRequested
                                                      ? Colors.white
                                                      : Colors.black,
                                                  fontSize: 20,
                                                  fontFamily: "Barlow",
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              )),
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () => _granted(),
                                            child: Container(
                                              height: height * 0.045,
                                              width: width * 0.38,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                color: Colors.transparent,
                                              ),
                                              child: Center(
                                                  child: Text(
                                                _isGranted
                                                    ? "        "
                                                    : "GRANETED",
                                                style: TextStyle(
                                                  color: _isGranted
                                                      ? Colors.white
                                                      : Colors.black,
                                                  fontSize: 20,
                                                  fontFamily: "Barlow",
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              )),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: AnimatedAlign(
                                        alignment: _isRequested == true
                                            ? Alignment.centerLeft
                                            : Alignment.centerRight,
                                        duration: Duration(milliseconds: 200),
                                        child: Container(
                                          width: width * 0.43,
                                          height: 42,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Color(0xff03045e),
                                          ),
                                          child: Center(
                                              child: Text(
                                            _isRequested == true
                                                ? "PERMISSIONS"
                                                : "GRANTED",
                                            style: TextStyle(
                                              fontFamily: "Barlow",
                                              color: Color(0xFFFFFFFF),
                                              fontWeight: FontWeight.w500,
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
                            Container(
                              height: height * 0.15 * itemcount,
                              child: ListView.builder(
                                  physics: NeverScrollableScrollPhysics(),
                                  itemCount: itemcount,
                                  itemBuilder: (context, index) {
                                    return Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: GestureDetector(
                                        onTap: () {
                                          _isRequested
                                              ? Navigator.pushAndRemoveUntil(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          PermissionDetailsScreen()),
                                                  (route) => true)
                                              : Navigator.pushAndRemoveUntil(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          GrantedPermissionDetailsScreen()),
                                                  (route) => true);
                                        },
                                        child: AdminRequestTile(),
                                      ),
                                    );
                                  }),
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: height * 0.07,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProfileScreen()),
                              (route) => true);
                        },
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
                              "assets/images/admin.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: height * 0.12,
                      right: width * 0.05,
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: const Color(0xff03045E),
                          border: Border.all(
                            width: 2,
                            color: const Color(0xffCAF0F8),
                          ),
                        ),
                        child: IconButton(
                          icon: const Icon(
                            Icons.edit,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => EditProfileScreen()),
                                (route) => true);
                          },
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
