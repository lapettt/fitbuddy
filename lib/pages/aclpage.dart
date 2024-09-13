import 'package:fitbuddy2/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AclPage extends StatefulWidget {
  const AclPage({super.key});

  @override
  State<AclPage> createState() => _AclPageState();
}

class _AclPageState extends State<AclPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 239, 230, 219),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
              backgroundColor: Color(0xFF4F709C),
              leading: IconButton(
                icon: Icon(Icons.arrow_back_ios_rounded),
                onPressed: () {
                  Get.to(() => HomePage());
                },
              ),
              expandedHeight: 200,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                background: Container(
                  color: Colors.blue[900],
                  child: Image(
                    image: AssetImage("assets/chest/dada.png"),
                    fit: BoxFit.fill,
                  ),
                ),
                title: Text("ACL EXERCISE"),
                centerTitle: true,
              )),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  padding: EdgeInsets.only(top: 20),
                  child: Column(
                    children: [
                      Text(
                        "1. INCLINE BENCH PRESS",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Column(
                        children: [
                          Container(
                            width: 200,
                            child: Image.asset("assets/chest/incline.png"),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Column(
                            children: [
                              Container(
                                margin: EdgeInsets.all(10),
                                child: Text(
                                  "Incline press adalah latihan kekuatan yang dilakukan dengan posisi tubuh condong ke atas pada bangku yang miring. Posisi ini mengatur sudut kemiringan bangku antara 15 hingga 45 derajat tergantung pada preferensi dan tingkat keahlian seseorang. Latihan incline press umumnya dilakukan dengan menggunakan barbell (alat angkat berat) atau dumbbell (beban tangan). Gerakan incline press berfokus pada penguatan otot dada bagian atas (pectoralis major), bahu, dan trisep.",
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  height: 400,
                  color: Colors.lime,
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
                  padding: EdgeInsets.only(top: 20),
                  child: Column(
                    children: [
                      Text(
                        "2. BENCH PRESS",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Column(
                        children: [
                          Container(
                            width: 200,
                            child: Image.asset("assets/chest/bench.png"),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Column(
                            children: [
                              Container(
                                margin: EdgeInsets.all(10),
                                child: Text(
                                  "Bench press adalah latihan kekuatan yang dilakukan dengan berbaring di bangku datar atau horizontal dan mengangkat beban (biasanya barbell) dari dada ke atas. Latihan ini merupakan salah satu latihan terpopuler dalam kegiatan angkat beban. Bench press melibatkan otot dada secara menyeluruh, terutama pectoralis major, serta melibatkan bahu dan trisep sebagai otot pendukung.",
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  height: 400,
                  color: Colors.lime,
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
                  padding: EdgeInsets.only(top: 20),
                  child: Column(
                    children: [
                      Text(
                        "3. DECLINE BENCH PRESS",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Column(
                        children: [
                          Container(
                            width: 200,
                            child: Image.asset("assets/chest/decline.png"),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Column(
                            children: [
                              Container(
                                margin: EdgeInsets.all(10),
                                child: Text(
                                  "Decline press adalah latihan kekuatan yang dilakukan dengan posisi tubuh condong ke bawah pada bangku yang miring ke belakang. Posisi ini juga dapat disesuaikan antara 15 hingga 45 derajat. Latihan decline press umumnya menggunakan barbell atau dumbbell. Latihan ini bertujuan untuk menguatkan otot dada bagian bawah (lower pectoralis major) serta melibatkan bahu dan trisep sebagai otot pendukung.",
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  height: 400,
                  color: Colors.lime,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
