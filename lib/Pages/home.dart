import 'package:userapp/Model/button.dart';
import 'package:userapp/Pages/login.dart';
import 'package:userapp/Pages/register.dart';
import 'package:userapp/Values/app_color.dart';
import 'package:userapp/Values/app_font.dart';
import 'package:userapp/Values/app_images.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("WELCOME", style: MyFont.h2),
              Expanded(
                child: Image.asset(MyImages.image1),
              ),
              button(
                  label: "Login",
                  press: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const LoginApp()));
                  }),
              button(
                  label: "Register",
                  press: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const RegisterApp()));
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
