import 'package:firebase_database/firebase_database.dart';
import 'package:fitbuddy2/controller/login_controller.dart';
import 'package:fitbuddy2/pages/home.dart';
import 'package:fitbuddy2/pages/insertdata.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  final controller = Get.put(LoginController());
  DatabaseReference dbRef =
      FirebaseDatabase.instance.ref().child('profile').child('user');

  bool? cekUser;

  // Fungsi untuk mendapatkan data pengguna dan memvalidasi keberadaan age, bh, dan bw
  _getUserData() async {
    String? userID = controller.getID();
    if (userID != null) {
      DataSnapshot snapshot = await dbRef.child(userID).get();

      if (snapshot.exists) {
        Map<String, dynamic> userData =
            Map<String, dynamic>.from(snapshot.value as Map);

        // Memeriksa apakah field 'age', 'bh', dan 'bw' ada dalam data pengguna
        if (userData.containsKey('age') &&
            userData.containsKey('bh') &&
            userData.containsKey('bw')) {
          setState(() {
            cekUser = true; // Data lengkap, arahkan ke HomePage
          });
        } else {
          setState(() {
            cekUser = false; // Data belum lengkap, arahkan ke InsertData
          });
        }
      } else {
        setState(() {
          cekUser = false; // Data pengguna tidak ada, arahkan ke InsertData
        });
      }
    } else {
      setState(() {
        cekUser = false; // User ID tidak ditemukan, arahkan ke InsertData
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF121212),
      body: Center(
        child: Obx(() {
          if (controller.googleAccount.value == null)
            return buildLogin();
          else
            return buildAlert();
        }),
      ),
    );
  }

  Container buildAlert() {
    return Container(
      child: AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        backgroundColor: Color.fromARGB(255, 74, 74, 74),
        title: const Center(
          child: Text(
            "Login Berhasil",
            style: TextStyle(color: Colors.white),
          ),
        ),
        content: Container(
          height: 50,
          width: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    backgroundColor: const Color.fromARGB(255, 21, 21, 21)),
                onPressed: () async {
                  await _getUserData();
                  if (cekUser == true) {
                    // Data lengkap, arahkan ke HomePage
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  } else {
                    // Data belum lengkap, arahkan ke InsertData
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => InsertData()));
                  }
                },
                child: const Text(
                  "OK",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Column buildLogin() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 250,
          height: 250,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
                image: AssetImage('assets/images/fbr1.png'), fit: BoxFit.cover),
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        const Text(
          "Login dengan : ",
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            padding: const EdgeInsets.all(15),
            backgroundColor: Color.fromARGB(255, 51, 51, 51),
            foregroundColor: Colors.white,
          ),
          onPressed: () async {
            await controller.login();
            String? userID = controller.getID();
            if (userID != null) {
              // Memperbarui data pengguna di Realtime Database menggunakan Google ID
              dbRef.child(userID).update({
                'name': controller.getDisplayName(),
                'email': controller.getEmail(),
                'id': userID
              });
            }
          },
          icon: Image.asset('assets/images/google.png'),
          label: const Text("Sign In With Google"),
        ),
      ],
    );
  }
}
