import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:squip_app/utils/constants.dart';
import 'package:squip_app/view/sign_in_sign_up/sign_in.dart';
import 'package:squip_app/view/user/accepted_page.dart';
import 'package:squip_app/view/user/rejected_page.dart';
import 'package:squip_app/widgets/round_button.dart';

class PolicePage extends StatefulWidget {
  const PolicePage({super.key});

  @override
  State<PolicePage> createState() => _PolicePageState();
}

class _PolicePageState extends State<PolicePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstants.lightGreen,
        title: const Text("PolicePage"),
        actions: [
          IconButton(
            onPressed: () {
              logout(context);
            },
            icon: Icon(
              Icons.logout,
            ),
          )
        ],
      ),
      body: Column(children: [
        RoundButton(
            title: 'Accepted',
            onTap: () {
              Get.to(AcceptedPage());
            }),
        RoundButton(
            title: 'Rejected',
            onTap: () {
              Get.to(RejectedPage());
            })
      ]),
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
