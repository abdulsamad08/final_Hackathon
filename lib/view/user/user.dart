import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:squip_app/utils/constants.dart';
import 'package:squip_app/view/sign_in_sign_up/sign_in.dart';
import 'package:squip_app/view/user/google_map/map_page.dart';
import 'package:squip_app/widgets/round_button.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstants.lightGreen,
        title: const Text("UserPage"),
        actions: [
          IconButton(
            onPressed: () {
              logout(context);
            },
            icon: const Icon(
              Icons.logout,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          children: [
            RoundButton(
                title: 'Police',
                onTap: () {
                  Get.to(MapView());
                }),
            RoundButton(
                title: 'Firebrigade',
                onTap: () {
                  Get.to(MapView());
                }),
            RoundButton(
                title: 'Ambulance',
                onTap: () {
                  Get.to(MapView());
                }),
          ],
        ),
      ),
    );
  }

  Future<void> logout(BuildContext context) async {
    CircularProgressIndicator();
    await FirebaseAuth.instance.signOut();
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => LoginPage(),
      ),
    );
  }
}
