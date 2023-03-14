import 'package:flutter/material.dart';

class FieldText extends StatelessWidget {
  String text;
  dynamic bool;
  final suffix;
  final prefix;
  final controller;
  final valid;
  FieldText(
      {super.key,
      required this.text,
      this.suffix,
      this.prefix,
      required this.bool,
      this.controller,
      this.valid});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: valid,
      controller: controller,
      obscureText: bool,
      decoration: InputDecoration(
          hintText: text,
          hintStyle: const TextStyle(color: Colors.black),
          suffixIcon: suffix,
          prefixIcon: prefix,
          border: OutlineInputBorder()),
    );
  }
}