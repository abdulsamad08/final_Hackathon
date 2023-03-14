import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final bool loading;
  const RoundButton({
    super.key,
    required this.title,
    required this.onTap,
    this.loading = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: InkWell(
        onTap: onTap,
        child: Center(
          child: Container(
            height: 50,
            width: 360,
            decoration: BoxDecoration(
                color: Color(0xff0D986A),
                borderRadius: BorderRadius.circular(15)),
            child: Center(
                child: loading
                    ? const CircularProgressIndicator(
                        color: Colors.white,
                      )
                    : Text(
                        title,
                        style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      )),
          ),
        ),
      ),
    );
  }
}