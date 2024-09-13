import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class Editdata extends StatefulWidget {
  const Editdata({Key? key, required this.profileKey}) : super(key: key);

  final String profileKey;

  @override
  State<Editdata> createState() => _EditdataState();
}

class _EditdataState extends State<Editdata> {
  final userNameController = TextEditingController();
  final userAgeController = TextEditingController();
  final userBhController = TextEditingController();
  final userBwController = TextEditingController();

  late DatabaseReference dbRef;

  @override
  void initState() {
    super.initState();
    dbRef = FirebaseDatabase.instance
        .ref()
        .child('profile')
        .child('user')
        .child(widget.profileKey);
    print('profileKey: ${widget.profileKey}');

    getprofileData();
  }

  void getprofileData() async {
    try {
      DataSnapshot snapshot = await dbRef.get();

      Map profile = snapshot.value as Map;

      userNameController.text = profile['name'] ?? 'Nama tidak ditemukan';
      userAgeController.text = profile['age'] ?? '';
      userBhController.text = profile['Bh'] ?? '';
      userBwController.text = profile['Bw'] ?? '';
      // ... dan seterusnya
    } catch (e) {
      print('Error fetching data: $e');
      // Tampilkan pesan error kepada pengguna
    }
  }

  // void getprofileData() async {
  //   DataSnapshot snapshot = await dbRef.child(widget.profileKey).get();

  //   Map profile = snapshot.value as Map;

  //   userNameController.text = profile['name'];
  //   userAgeController.text = profile['age'];
  //   userBhController.text = profile['bh'];
  //   userBwController.text = profile['bw'];
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFF121212),
      appBar: AppBar(
        backgroundColor: const Color(0xFF121212),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Editing Profile',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start, // Aligns all elements to the start
            children: [
              const SizedBox(height: 20),

              // Name Field
              SizedBox(
                width: 320,
                height: 30,
                child: Text(
                  'Name',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Container(
                width: 320,
                height: 40,
                decoration: ShapeDecoration(
                  color: Color(0xFF484848),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: TextField(
                  controller: userNameController,
                  keyboardType: TextInputType.text,
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Poppins',
                  ),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    hintText: 'Enter Your Name',
                    hintStyle: TextStyle(
                      color: Colors.white54,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),

              // Age Field
              SizedBox(
                width: 320, // Make sure the width is the same as the Name field
                height: 30,
                child: Text(
                  'Age',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Container(
                width: 320, // Make sure the width is the same as the Name field
                height: 40,
                decoration: ShapeDecoration(
                  color: Color(0xFF484848),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: TextField(
                  controller: userAgeController,
                  keyboardType: TextInputType.number,
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Poppins',
                  ),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    hintText: 'Enter Your Age',
                    hintStyle: TextStyle(
                      color: Colors.white54,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),

              // Body Height Field
              SizedBox(
                width: 320, // Make sure the width is the same as the Name field
                height: 30,
                child: Text(
                  'Body Height',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Container(
                width: 320, // Make sure the width is the same as the Name field
                height: 40,
                decoration: ShapeDecoration(
                  color: Color(0xFF484848),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: TextField(
                  controller: userBhController,
                  keyboardType: TextInputType.phone,
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Poppins',
                  ),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    hintText: 'Enter Your Body Height',
                    hintStyle: TextStyle(
                      color: Colors.white54,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),

              // Body Weight Field
              SizedBox(
                width: 320, // Make sure the width is the same as the Name field
                height: 30,
                child: Text(
                  'Body Weight',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Container(
                width: 320, // Make sure the width is the same as the Name field
                height: 40,
                decoration: ShapeDecoration(
                  color: Color(0xFF484848),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: TextField(
                  controller: userBwController,
                  keyboardType: TextInputType.phone,
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Poppins',
                  ),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    hintText: 'Enter Your Body Weight',
                    hintStyle: TextStyle(
                      color: Colors.white54,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),

              Padding(
                padding: const EdgeInsets.only(left: 80),
                child: Container(
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    onPressed: () {
                      Map<String, String> profile = {
                        'name': userNameController.text,
                        'age': userAgeController.text,
                        'bh': userBhController.text,
                        'bw': userBwController.text
                      };

                      dbRef
                          .update(profile)
                          .then((value) => {Navigator.pop(context)});
                    },
                    child: const Text('Update Data'),
                    color: Colors.black,
                    textColor: Colors.white,
                    minWidth: 150,
                    height: 40,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
