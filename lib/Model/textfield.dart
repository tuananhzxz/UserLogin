import 'package:userapp/Values/app_color.dart';
import 'package:flutter/material.dart';

class textField extends StatelessWidget {
  const textField(
      {super.key,
      required this.controller,
      required this.hint,
      required this.icon,
      this.passWordHide = false});

  final TextEditingController controller;
  final String hint;
  final IconData icon;
  final bool passWordHide;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      margin: const EdgeInsets.symmetric(vertical: 6),
      width: size.width * .9,
      height: 55,
      decoration: BoxDecoration(
        color: MyColor.textFieldColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextFormField(
        controller: controller,
        obscureText: passWordHide,
        decoration: InputDecoration(
          hintText: hint,
          icon: Icon(icon),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
