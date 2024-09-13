import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class Chest extends StatefulWidget {
  const Chest({super.key});

  @override
  State<Chest> createState() => _ChestState();
}

class _ChestState extends State<Chest> {
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
                "Latihan Otot Dada",
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
                  height: 500,
                  child: Column(
                    children: [
                      const Text(
                        "1. Incline Bench press (Barbell atau Dumbbell)",
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
                            "Manfaat: Lebih fokus pada otot dada bagian atas.",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            "Cara: Sama seperti bench press biasa, namun dilakukan di bangku yang sedikit miring (sekitar 30-45 derajat) untuk fokus pada otot dada bagian atas.",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            "1. Lakukan 4x12 Reps Berat angkatan disesuaikan dengan kapasitas",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            "2. Latihan ini sangat cocok diawal latihan dada karena fokus membentuk dada bagian atas",
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
                  height: 450,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: Column(
                    children: [
                      const Text(
                        "2. Bench Press (Barbell atau Dumbbell)",
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
                            "Manfaat: Melatih otot dada secara maksimal, terutama pectoralis major dan minor.",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            "Cara Melakukan: Berbaring di bangku datar, pegang barbell atau dumbbell di atas dada. Turunkan perlahan ke arah dada, lalu dorong kembali ke posisi awal.",
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
                            "2. Latihan ini dilakukan setelah melakukan inclice bench press",
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
                        "3. Chest Fly (Dumbbell atau Cable)",
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
                            "Manfaat: Melatih otot dada secara terisolasi, membantu memperluas otot pectoralis.",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            "Cara Melakukan: Berbaring di bangku datar dengan dumbbell di masing-masing tangan. Dengan sedikit tekukan pada siku, buka tangan ke samping hingga dumbbell sejajar dengan tubuh, lalu kembalikan ke posisi awal.",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "1.  Lakukan 3x12 Reps Berat angkatan disesuaikan dengan kapasitas",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "2. Latihan ini dilakuan untuk melakukan gerakan isolasi otot untuk membentuk otot agar lebih detail",
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
                        "4. Dips (Untuk Dada)",
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
                            "Manfaat: Untuk menargetkan otot dada bagian bawah",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            "Cara: Genggam dua pegangan paralel, turunkan tubuh dengan siku menekuk, dan dorong kembali ke atas. Jaga posisi tubuh sedikit condong ke depan untuk fokus pada otot dada.",
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
                            "2. Anjuran untuk latihan ini apabila mempunyai masalah dan cidera pada bahu lebih baik menggunakan alternatif dips yang lain seperti di kursi atau seated dips",
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
                        "5. Chest Fly Machine",
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
                            "Manfaat: Fokus pada otot dada dengan stabilisasi yang lebih baik.",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          const Text(
                            "Cara: Duduk di mesin pec deck, genggam handle, dan dorong lengan ke depan hingga hampir bertemu di depan dada. Kembali ke posisi awal secara perlahan.",
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
                            "2. Latihan ini samam dengan dumbbell fly untuk membentuk garis dan detail otot",
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
        ],
      ),
    );
  }
}
