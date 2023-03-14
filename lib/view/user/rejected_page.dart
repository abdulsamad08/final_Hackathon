import 'package:flutter/material.dart';

class RejectedPage extends StatelessWidget {
  const RejectedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              'assets/images/denied.png',
              height: 70,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            "No Connection is made with th required officer",
            style: TextStyle(
                fontSize: 12, color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
