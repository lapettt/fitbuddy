import 'package:fitbuddy2/controller/login_controller.dart';
import 'package:fitbuddy2/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  final controller = Get.put(LoginController());

  // int _selectedIndex = 1;

  // void _onItemTapped(int index) {
  //   setState(() {
  //     _selectedIndex = index;
  //   });
  // }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xFF121212),
        title: const Text(
          "Settings",
          style: TextStyle(
            color: Color.fromRGBO(255, 255, 255, 0.965),
          ),
        ),
      ),
      backgroundColor: Color(0xFF121212),
      body: Container(
        padding: EdgeInsets.only(top: 50, left: 10),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: Image.network(
                          controller.googleAccount.value?.photoUrl ?? '')
                      .image,
                  backgroundColor: Colors.amber,
                  radius: 40,
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      controller.getDisplayName().toString(),
                      style: TextStyle(color: Colors.white, fontSize: 22),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      controller.getEmail().toString(),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Container(
                alignment: Alignment.center,
                // padding: EdgeInsets.only(right: 75),
                child: ElevatedButton.icon(
                  onPressed: () {
                    controller.logout();

                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (_) => loginPage()));
                  },
                  label: const Text(
                    "Logout",
                    style: TextStyle(color: Colors.white),
                  ),
                  icon: Icon(
                    Icons.logout_outlined,
                    color: Colors.white,
                  ),
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      backgroundColor: const Color.fromARGB(255, 72, 72, 72)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
