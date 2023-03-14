import 'package:flutter/material.dart';

class AcceptedPage extends StatelessWidget {
  const AcceptedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              'assets/images/accepted.jpg',
              height: 70,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            "  Don't worry we will be there as soon as possible",
            style: TextStyle(
                fontSize: 12, color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
