import 'package:fitbuddy2/controller/login_controller.dart';
import 'package:fitbuddy2/pages/edit.dart';
import 'package:fitbuddy2/pages/geminichatbot.dart';
import 'package:fitbuddy2/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ProfilePopup extends StatelessWidget {
  ProfilePopup({super.key});

  final LoginController controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.grey[800],
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: controller.googleAccount.value?.photoUrl !=
                          null
                      ? NetworkImage(controller.googleAccount.value!.photoUrl!)
                      : AssetImage('assets/images/default_avatar.png')
                          as ImageProvider,
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      controller.googleAccount.value?.displayName ?? 'User',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    Text(
                      controller.googleAccount.value?.email ??
                          'user@example.com',
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            _buildOption(
              icon: MdiIcons.pencilOutline,
              text: 'Edit Profile',
              onTap: () {
                // TODO: Implement Edit Profile functionality
                Get.to(() => Editdata(
                      profileKey: controller.getID() ??
                          '', // Menggunakan Google ID sebagai profileKey
                    ));
              },
            ),
            _buildOption(
              icon: MdiIcons.chatOutline,
              text: 'Chatbot',
              onTap: () {
                // TODO: Implement Settings functionality
                Get.to(() => Geminichatbot());
              },
            ),
            _buildOption(
              icon: MdiIcons.logout,
              text: 'Logout',
              onTap: () {
                // TODO: Implement Chatbot functionality
                controller.logout();

                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => loginPage()));
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildOption(
      {required IconData icon,
      required String text,
      required VoidCallback onTap}) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          children: [
            Icon(icon, color: Colors.white, size: 24),
            const SizedBox(width: 10),
            Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
