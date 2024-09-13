import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class Shoudlerinjuries extends StatefulWidget {
  const Shoudlerinjuries({super.key});

  @override
  State<Shoudlerinjuries> createState() => _ShoudlerinjuriesState();
}

class _ShoudlerinjuriesState extends State<Shoudlerinjuries> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF121212),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Color(0xFF121212),
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back_ios_new_rounded,
                color: Colors.white,
              ),
              onPressed: () {
                Get.back();
              },
            ),
            expandedHeight: 50,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                color: Colors.blueAccent[900],
              ),
              title: Text(
                "Latihan Cidera Bahu",
                style: TextStyle(color: Colors.white),
              ),
              centerTitle: true,
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Text(
                        "1. Pendulum Swings",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Column(
                        children: [
                          Container(
                            width: 200,
                            // child: Image.asset(""),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Tujuan: Meningkatkan mobilitas bahu tanpa menambah tekanan pada sendi.",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "1. Berdiri dengan posisi tubuh sedikit membungkuk, letakkan satu tangan di meja atau kursi untuk penopang.",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "2. Berdiri dengan posisi tubuh sedikit membungkuk, letakkan satu tangan di meja atau kursi untuk penopang.",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "3. Ayunkan lengan dengan lembut ke depan dan ke belakang, lalu gerakan secara melingkar searah dan berlawanan arah jarum jam.",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "4. Lakukan selama 1-2 menit.",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          RichText(
                            text: TextSpan(
                              text:
                                  'Klik Video di bawah sini untuk lebih lanjut',
                              style: const TextStyle(color: Colors.black),
                              children: [
                                TextSpan(
                                  text: 'this link',
                                  style: const TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () async {
                                      final Uri url = Uri.parse(
                                          'https://www.youtube.com/watch?v=OKaxBRcoxzY');
                                      if (await canLaunchUrl(url)) {
                                        await launchUrl(url); // Open the URL
                                      } else {
                                        throw 'Could not launch $url';
                                      }
                                    },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  height: 450,
                  color: const Color.fromARGB(255, 255, 255, 255),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Text(
                        "2. Shoulder Blade Squeezes",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Column(
                        children: [
                          Container(
                            width: 200,
                            // child: Image.asset(""),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Tujuan: Menguatkan otot di sekitar tulang belikat (scapula) yang mendukung gerakan bahu.",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "1. Duduk atau berdiri dengan punggung lurus.",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "2.Tarik bahu Anda ke belakang dan cobalah untuk merapatkan kedua tulang belikat.",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "3. Tahan posisi ini selama 5-10 detik, lalu rileks.",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "4. Ulangi 10-15 kali, 2-3 set sehari.",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          RichText(
                            text: TextSpan(
                              text:
                                  'Klik Video di bawah sini untuk lebih lanjut',
                              style: const TextStyle(color: Colors.black),
                              children: [
                                TextSpan(
                                  text: 'this link',
                                  style: const TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () async {
                                      final Uri url = Uri.parse(
                                          'https://www.youtube.com/watch?v=u_7VgcoVbpQ');
                                      if (await canLaunchUrl(url)) {
                                        await launchUrl(url); // Open the URL
                                      } else {
                                        throw 'Could not launch $url';
                                      }
                                    },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  height: 450,
                  color: const Color.fromARGB(255, 255, 255, 255),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Text(
                        "3. Towel Stretch",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Column(
                        children: [
                          Container(
                            width: 200,
                            // child: Image.asset(""),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Tujuan: Meningkatkan fleksibilitas dan rentang gerak pada sendi bahu.",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "1. Pegang handuk dengan kedua tangan di belakang punggung Anda. Satu tangan di atas bahu dan satu tangan di bawah punggung.",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "2. Tarik handuk perlahan dengan tangan yang di atas sehingga tangan di bawah bergerak ke arah punggung bagian atas.",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "3. Tahan selama 10-15 detik, lalu ulangi dengan sisi lain.",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "4. Lakukan 10-15 kali per sisi, 2-3 set sehari.",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          RichText(
                            text: TextSpan(
                              text:
                                  'Klik Video di bawah sini untuk lebih lanjut',
                              style: const TextStyle(color: Colors.black),
                              children: [
                                TextSpan(
                                  text: 'this link',
                                  style: const TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () async {
                                      final Uri url = Uri.parse(
                                          'https://www.youtube.com/watch?v=fyn_99Du3VY');
                                      if (await canLaunchUrl(url)) {
                                        await launchUrl(url); // Open the URL
                                      } else {
                                        throw 'Could not launch $url';
                                      }
                                    },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  height: 450,
                  color: const Color.fromARGB(255, 255, 255, 255),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Text(
                        "4. Scapular Retraction",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Column(
                        children: [
                          Container(
                            width: 200,
                            // child: Image.asset(""),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Tujuan: Mengaktifkan otot-otot di sekitar tulang belikat untuk memperbaiki postur dan kestabilan bahu.",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "1. Berbaring tengkurap di lantai atau di atas meja.",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "2. Dengan tangan menggantung di sisi meja, tarik tulang belikat Anda ke belakang tanpa mengangkat lengan.",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "3. Tahan selama 5-10 detik, lalu rileks.",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "4. Ulangi 10-15 kali, 2-3 set sehari.",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          RichText(
                            text: TextSpan(
                              text:
                                  'Klik Video di bawah sini untuk lebih lanjut',
                              style: const TextStyle(color: Colors.black),
                              children: [
                                TextSpan(
                                  text: 'this link',
                                  style: const TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () async {
                                      final Uri url = Uri.parse(
                                          'https://www.youtube.com/watch?v=Bw88PXaGUxU');
                                      if (await canLaunchUrl(url)) {
                                        await launchUrl(url); // Open the URL
                                      } else {
                                        throw 'Could not launch $url';
                                      }
                                    },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  height: 450,
                  color: const Color.fromARGB(255, 255, 255, 255),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Text(
                        "5. Shoulder Flexion with Wand",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Column(
                        children: [
                          Container(
                            width: 200,
                            // child: Image.asset(""),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Tujuan: Meningkatkan jangkauan gerak bahu.",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "1. Berbaring telentang dengan lengan dipegang oleh tongkat atau sejenisnya.",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "2. Dengan lengan yang tidak cedera, dorong tongkat untuk mengangkat lengan yang cedera ke atas kepala.",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "3. Tahan selama beberapa detik, lalu kembali ke posisi awal.",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "4. Lakukan 10-15 kali, 2-3 set sehari.",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          RichText(
                            text: TextSpan(
                              text:
                                  'Klik Video di bawah sini untuk lebih lanjut',
                              style: const TextStyle(color: Colors.black),
                              children: [
                                TextSpan(
                                  text: 'this link',
                                  style: const TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () async {
                                      final Uri url = Uri.parse(
                                          'https://www.youtube.com/watch?v=Ws8AhOY7O48');
                                      if (await canLaunchUrl(url)) {
                                        await launchUrl(url); // Open the URL
                                      } else {
                                        throw 'Could not launch $url';
                                      }
                                    },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  height: 450,
                  color: const Color.fromARGB(255, 255, 255, 255),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
