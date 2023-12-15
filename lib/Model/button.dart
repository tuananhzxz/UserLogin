import 'package:userapp/Values/app_color.dart';
import 'package:userapp/Values/app_font.dart';
import 'package:flutter/material.dart';

class button extends StatelessWidget {
  const button({super.key, required this.label, required this.press});

  final String label;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(10),

      child: Container(
      width: size.width * .9,
       decoration: BoxDecoration(
          color: MyColor.buttonColor,
          borderRadius: BorderRadius.circular(10),
        ),

      child: TextButton(

        onPressed: press,
        child: Text(label, style: MyFont.h5),

      ),
      ),
    );

  }
}