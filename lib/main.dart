import 'package:firebase_core/firebase_core.dart';
import 'package:fitbuddy2/controller/constgemini.dart';
import 'package:fitbuddy2/firebase_options.dart';
import 'package:fitbuddy2/exercisepage/aclexercise.dart';
import 'package:fitbuddy2/pages/aclpage.dart';
import 'package:fitbuddy2/pages/home.dart';
import 'package:fitbuddy2/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    name: "fitbuddy",
    options: DefaultFirebaseOptions.currentPlatform,
  );
  Gemini.init(
    apiKey: GEMINI_API_KEY,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Fitbuddy',
        initialRoute: '/',
        home: loginPage()
        // getPages: [
        //   GetPage(name: '/', page: () => AclPage()),
        //   GetPage(name: '/pages', page: () => AclPage())
        // ],
        );
  }
}
