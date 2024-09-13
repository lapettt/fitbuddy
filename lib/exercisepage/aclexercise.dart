import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class aclPage extends StatefulWidget {
  const aclPage({super.key});

  @override
  State<aclPage> createState() => _aclPageState();
}

class _aclPageState extends State<aclPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: const Color(0xFF121212),
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
                color: const Color.fromARGB(255, 39, 39, 39),
              ),
              title: const Text(
                "ACL EXERCISE",
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
                  padding: const EdgeInsets.all(20.0),
                  color: const Color.fromARGB(255, 255, 255, 255),
                  height: 420,
                  child: Column(
                    children: [
                      const Text(
                        "1. Quads Set",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      const SizedBox(height: 5),
                      Column(
                        children: [
                          Container(
                            width: 200,
                            // child: Image.asset(""), // Add your image here if needed
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            "Tujuan: Mengaktifkan dan memperkuat otot quadriceps tanpa menekuk lutut.",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            "1. Duduk di lantai dengan kaki lurus di depan.",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            "2. Tekan bagian belakang lutut yang cedera ke lantai dengan cara menegangkan otot paha (quad).",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            "3. Tahan selama 5-10 detik, lalu rileks.",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            "4. Ulangi 10-15 reps, 2-3 set sehari.",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 10),
                          // Add link with url_launcher
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
                                          'https://www.youtube.com/watch?v=IF5eDfb8afM');
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
                  padding: const EdgeInsets.all(20.0),
                  height: 420,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: Column(
                    children: [
                      const Text(
                        "2. Straight Leg Raises",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.justify,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Column(
                        children: [
                          Container(
                            width: 200,
                            // child: Image.asset(""),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            "Tujuan: Menguatkan otot paha tanpa memberi tekanan pada lutut.",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "1. Berbaring telentang dengan satu kaki lurus dan satu kaki ditekuk.",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "2. Angkat kaki yang lurus hingga sejajar dengan kaki yang ditekuk.",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "3. Tahan selama beberapa detik, kemudian turunkan perlahan.",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "4. Ulangi 10-15 kali per set, 2-3 set sehari.",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
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
                                          'https://www.youtube.com/watch?v=U4L_6JEv9Jg');
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
                  padding: const EdgeInsets.all(20.0),
                  height: 420,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: Column(
                    children: [
                      const Text(
                        "3. Heel Slides",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.justify,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Column(
                        children: [
                          Container(
                            width: 200,
                            // child: Image.asset(""),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            "Tujuan: Membantu mengembalikan fleksibilitas lutut.",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "1. Duduk atau berbaring dengan kaki lurus.",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "2. Perlahan geser tumit kaki yang cedera ke arah bokong sambil menekuk lutut.",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "3. Setelah mencapai batas nyaman, luruskan kaki kembali.",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "4. Ulangi 10-15 kali, 2-3 set sehari.",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
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
                                          'https://www.youtube.com/watch?v=YpCn6njeNaU');
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
                  padding: const EdgeInsets.all(20.0),
                  height: 420,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: Column(
                    children: [
                      const Text(
                        "4. Hip Bridges",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.justify,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Column(
                        children: [
                          Container(
                            width: 200,
                            // child: Image.asset(""),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            "Tujuan: Menguatkan otot glute dan paha belakang.",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "1. Berbaring telentang dengan lutut ditekuk dan kaki rata di lantai.",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "2. Angkat pinggul Anda ke atas hingga tubuh membentuk garis lurus dari bahu hingga lutut.",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "3. Tahan selama beberapa detik, lalu turunkan perlahan.",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "4. Lakukan 10-15 repetisi, 2-3 set sehari.",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
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
                                          'https://www.youtube.com/watch?v=AQOJhgB1O-I');
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
                  padding: const EdgeInsets.all(20.0),
                  height: 420,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: Column(
                    children: [
                      const Text(
                        "5. Standing Hamstring Curls",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.justify,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Column(
                        children: [
                          Container(
                            width: 200,
                            // child: Image.asset(""),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            "Tujuan: Menguatkan otot hamstring.",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "1. Berdiri tegak dengan tangan bertumpu pada sesuatu untuk keseimbangan.",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "2. Tekuk lutut yang cedera, angkat tumit ke arah bokong.",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "3. Turunkan kaki kembali ke posisi semula.",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "4. Ulangi 10-15 kali, 2-3 set sehari.",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
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
                                          'https://www.youtube.com/watch?v=LaDKpYN9FDw');
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
                  padding: const EdgeInsets.all(20.0),
                  height: 450,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: Column(
                    children: [
                      const Text(
                        "6. Wall Squats",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.justify,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Column(
                        children: [
                          Container(
                            width: 200,
                            // child: Image.asset(""),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            "Tujuan: Menguatkan otot quadriceps dan otot sekitar lutut.\n PS: Setelah diizinkan oleh dokter/fisioterapis",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "1. Berdiri dengan punggung menempel di dinding dan kaki sedikit ke depan.",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "2. Turun perlahan seperti duduk di kursi, tetapi hanya hingga sudut lutut tidak melebihi 90 derajat.",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "3. Tahan selama 5-10 detik, kemudian kembali berdiri.",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "4. Ulangi 10-15 kali, 2-3 set sehari.",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
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
                                          'https://www.youtube.com/watch?v=t6KeIiQAOkA');
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
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
