import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class Leg extends StatefulWidget {
  const Leg({super.key});

  @override
  State<Leg> createState() => _ChestState();
}

class _ChestState extends State<Leg> {
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
                "Latihan Otot Kaki",
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
                  height: 400,
                  child: Column(
                    children: [
                      const Text(
                        "1. Squat (Barbell Squat atau Bodyweight Squat)",
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
                            "Manfaat: Melatih seluruh otot kaki, terutama quadriceps (paha depan), hamstring (paha belakang), gluteus (pantat), dan otot betis.",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            "Cara: Berdiri dengan kaki selebar bahu, turunkan tubuh seperti duduk di kursi dengan lutut ditekuk hingga paha sejajar dengan lantai, lalu dorong tubuh kembali ke posisi berdiri.",
                            textAlign: TextAlign.justify,
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
                  height: 350,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: Column(
                    children: [
                      const Text(
                        "2. Lunges",
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
                            "Manfaat: Melatih quadriceps, hamstring, gluteus, dan otot betis, serta meningkatkan keseimbangan dan stabilitas.",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            "Cara Melakukan: Langkahkan satu kaki ke depan, turunkan tubuh hingga lutut depan membentuk sudut 90 derajat dan lutut belakang hampir menyentuh lantai, lalu dorong kembali ke posisi awal.",
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
                  height: 300,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: Column(
                    children: [
                      const Text(
                        "3. Leg Press",
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
                            "Manfaat: Fokus pada quadriceps, hamstring, dan gluteus.",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            "Cara Melakukan: Duduk di mesin leg press, letakkan kaki di platform, dorong platform ke depan hingga kaki lurus, kemudian turunkan perlahan hingga lutut kembali tertekuk.",
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
                  height: 450,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: Column(
                    children: [
                      const Text(
                        "4. Romanian Deadlift (RDL)",
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
                            "Manfaat: Fokus pada hamstring dan gluteus.",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            "Cara: Pegang barbell atau dumbbell di depan tubuh dengan tangan selebar bahu. Jaga punggung tetap lurus, dorong pinggul ke belakang dan turunkan beban sampai sejajar dengan tulang kering, lalu kembali ke posisi berdiri.",
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
                  height: 300,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: Column(
                    children: [
                      const Text(
                        "5. Calf Raise",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.justify,
                      ),
                      const SizedBox(
                        height: 10,
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
                            "Manfaat: Melatih otot betis (gastrocnemius dan soleus).",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Cara: Berdiri dengan ujung kaki di platform atau anak tangga, angkat tumit setinggi mungkin, lalu turunkan perlahan hingga tumit lebih rendah dari bola kaki.",
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
                  height: 350,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: Column(
                    children: [
                      const Text(
                        "6. Sumo Deadlift",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.justify,
                      ),
                      const SizedBox(
                        height: 10,
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
                            "Manfaat: Fokus pada quadriceps, hamstring, gluteus, dan adductor (otot bagian dalam paha).",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Cara: Berdiri dengan kaki lebih lebar dari bahu dan jari kaki mengarah keluar. Pegang barbell di antara kaki, angkat dengan punggung lurus dan dorong pinggul ke depan saat berdiri, kemudian turunkan kembali.",
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
