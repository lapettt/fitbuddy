import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class Arm extends StatefulWidget {
  const Arm({super.key});

  @override
  State<Arm> createState() => _ChestState();
}

class _ChestState extends State<Arm> {
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
                "Latihan Otot Tangan",
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
                  height: 520,
                  child: Column(
                    children: [
                      const Text(
                        "1. Overhead Press (Shoulder Press)",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      const SizedBox(height: 10),
                      Column(
                        children: [
                          Container(
                            width: 200,
                            // child: Image.asset(""), // Add your image here if needed
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            "Manfaat: Melatih deltoid anterior (bahu depan), deltoid lateral (bahu samping), dan trapezius.",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            "Cara: Pegang barbell atau dumbbell dengan kedua tangan setinggi bahu, dorong beban ke atas hingga lengan lurus, lalu turunkan perlahan kembali ke posisi awal.",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            "1. Lakukan 3x12 Reps Berat angkatan disesuaikan dengan kapasitas",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            "2. Latihan ini sangat cocok diawal latihan karena ini latihan berat untuk otot bahu jadi lebih baik pada saat tenaga masih penuh",
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
                  color: const Color.fromARGB(255, 255, 255, 255),
                  height: 520,
                  child: Column(
                    children: [
                      const Text(
                        "1. Overhead Press (Shoulder Press)",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      const SizedBox(height: 10),
                      Column(
                        children: [
                          Container(
                            width: 200,
                            // child: Image.asset(""), // Add your image here if needed
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            "Manfaat: Melatih deltoid anterior (bahu depan), deltoid lateral (bahu samping), dan trapezius.",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            "Cara: Pegang barbell atau dumbbell dengan kedua tangan setinggi bahu, dorong beban ke atas hingga lengan lurus, lalu turunkan perlahan kembali ke posisi awal.",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            "1. Lakukan 3x12 Reps Berat angkatan disesuaikan dengan kapasitas",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            "2. Latihan ini sangat cocok diawal latihan karena ini latihan berat untuk otot bahu jadi lebih baik pada saat tenaga masih penuh",
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
                  height: 500,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: Column(
                    children: [
                      const Text(
                        "2. Front Raise",
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
                            "Manfaat: Melatih deltoid anterior (bahu depan) dan membantu memperkuat otot bahu bagian depan.",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            "Cara Melakukan: Pegang dumbbell di kedua tangan di depan tubuh. Angkat dumbbell ke depan hingga setinggi bahu, lalu turunkan kembali dengan kontrol.",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "1.  Lakukan 4x12 Reps Berat angkatan disesuaikan dengan kapasitas",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "2. Latihan ini dilakukan untuk mengisolasi gerakan overheadpress agar bentuk otot lebih detail dan padat",
                            textAlign: TextAlign.justify,
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
                                  text: 'Klik Disini',
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
                  height: 500,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: Column(
                    children: [
                      const Text(
                        "3. Lateral Raise",
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
                            "Manfaat: Fokus pada deltoid lateral (bahu samping), memberikan lebar pada bahu.",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            "Cara Melakukan: Berdiri tegak dengan dumbbell di kedua tangan di samping tubuh. Angkat kedua tangan ke samping hingga sejajar dengan bahu, kemudian turunkan perlahan.",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "1.  Lakukan 4x12 Reps Berat angkatan disesuaikan dengan kapasitas",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "2. Latihan ini dilakukan setelah gerakan front lateral raises",
                            textAlign: TextAlign.justify,
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
                  height: 500,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: Column(
                    children: [
                      const Text(
                        "4. Upright Row",
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
                            "Manfaat: Fokus pada deltoid lateral (bahu samping), trapezius, dan otot bahu bagian atas.",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            "Cara: Pegang barbell atau dumbbell di depan tubuh dengan tangan selebar bahu. Tarik beban ke atas hingga ke dada dengan siku mengarah ke luar, lalu turunkan kembali.",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "1.  Lakukan 4x12 Reps Berat angkatan disesuaikan dengan kapasitas",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "2. latihan ini dilakukan untuk mendevelop pundak dan juga bahu samping",
                            textAlign: TextAlign.justify,
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
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  padding: const EdgeInsets.all(20.0),
                  height: 500,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: Column(
                    children: [
                      const Text(
                        "5. Face Pull",
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
                            "Manfaat: Fokus pada deltoid posterior (bahu belakang), otot trapezius, dan rhomboid. Latihan ini juga bagus untuk memperbaiki postur bahu.",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          const Text(
                            "Cara: Gunakan kabel dengan pegangan tali. Tarik tali ke arah wajah dengan siku terbuka lebar dan bahu ke belakang, lalu kembali ke posisi awal.",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            "1.  Lakukan 4x12 Reps Berat angkatan disesuaikan dengan kapasitas",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "2. Latihan ini untuk memaksimalkan perkembangan otot bahu belakang karena jarang terlatih",
                            textAlign: TextAlign.justify,
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
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  padding: const EdgeInsets.all(20.0),
                  height: 400,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: Column(
                    children: [
                      const Text(
                        "6. Dumbbell Shrug",
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
                            "Manfaat: Melatih otot trapezius (traps), yang memberikan kekuatan pada bahu bagian atas dan leher.",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          const Text(
                            "Cara: Berdiri dengan dumbbell di kedua tangan di samping tubuh. Angkat bahu setinggi mungkin, lalu turunkan dengan kontrol.",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            "1.  Lakukan 4x12 Reps Berat angkatan disesuaikan dengan kapasitas",
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
