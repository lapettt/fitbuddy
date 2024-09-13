import 'package:fitbuddy2/controller/login_controller.dart';
import 'package:fitbuddy2/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:get/get.dart';

class InsertData extends StatefulWidget {
  const InsertData({Key? key}) : super(key: key);

  @override
  State<InsertData> createState() => _InsertDataState();
}

class _InsertDataState extends State<InsertData> {
  TextEditingController userNameController = TextEditingController();
  TextEditingController userAgeController = TextEditingController();
  TextEditingController userHeightController = TextEditingController();
  TextEditingController userWeightController = TextEditingController();

  late DatabaseReference dbRef;

  final controller = Get.put(LoginController());

  @override
  void initState() {
    super.initState();
    dbRef = FirebaseDatabase.instance.ref().child('profile').child('user');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              const Text(
                'Hi, My Name is Buddy your',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
              const Text(
                'Personal Assistant !',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 30,
              ),
              TextField(
                controller: userNameController,
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                  labelText: 'Name',
                  hintText: 'Enter Your Name',
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              TextField(
                controller: userAgeController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Age',
                  hintText: 'Enter Your Age',
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              TextField(
                controller: userHeightController,
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                  labelText: 'Body Height',
                  hintText: 'Input your body height',
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              TextField(
                controller: userWeightController,
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                  labelText: 'Body weight',
                  hintText: 'Input your body weight',
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    backgroundColor: Colors.black),
                onPressed: () {
                  if (userNameController.text == "" ||
                      userAgeController.text == "" ||
                      userHeightController.text == "" ||
                      userWeightController.text == "") {
                    showDialog(context: context, builder: (_) => required());
                  } else {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (_) => HomePage()));
                    Map<String, String> profile = {
                      'name': userNameController.text,
                      'age': userAgeController.text,
                      'bh': userHeightController.text,
                      'bw': userWeightController.text,
                      'id': controller.getID().toString()
                    };

                    dbRef.child(controller.getID().toString()).update(profile);
                  }
                },
                child: const Text('Done'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  AlertDialog required() {
    return AlertDialog(
      title: Text("kosong"),
    );
  }
}
