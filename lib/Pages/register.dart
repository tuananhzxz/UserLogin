import 'package:userapp/Firebass%20Authentication/firebase_auth.dart';
import 'package:userapp/Model/button.dart';
import 'package:userapp/Model/textfield.dart';
import 'package:userapp/Pages/home.dart';
import 'package:userapp/Pages/login.dart';
import 'package:userapp/Values/app_color.dart';
import 'package:userapp/Values/app_font.dart';
import 'package:userapp/Values/app_images.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class RegisterApp extends StatefulWidget {
  const RegisterApp({super.key});

  @override
  State<RegisterApp> createState() => _RegisterAppState();
}

class _RegisterAppState extends State<RegisterApp> {
  final FirebaseAuthentication _auth = FirebaseAuthentication();

  TextEditingController emailCtl = TextEditingController();
  TextEditingController usernameCtl = TextEditingController();
  TextEditingController passwordCtl = TextEditingController();

  @override
  void dispose() {
    emailCtl.dispose();
    usernameCtl.dispose();
    passwordCtl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: MyColor.backgroundColor,
      appBar: AppBar(
        backgroundColor: MyColor.backgroundColor,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
          context,
          MaterialPageRoute(
          builder: (context) => const Home()));
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "REGISTER ACCOUNT",
                style: MyFont.h3.copyWith(fontWeight: FontWeight.bold),
              ),
              Image.asset(
                MyImages.image3,
                width: size.width * 0.4,
              ),
              textField(
                  controller: usernameCtl,
                  hint: "Full Name",
                  icon: Icons.account_circle),
              textField(controller: emailCtl, hint: "Email", icon: Icons.email),
              textField(
                  controller: passwordCtl,
                  hint: "PassWord",
                  icon: Icons.lock,
                  passWordHide: true),
              button(
                  label: "Register",
                  press: () {
                    if (usernameCtl.text != "" &&
                        emailCtl.text != "" &&
                        passwordCtl.text != "") {
                      register();
                    }
                  }),
            ],
          ),
        ),
      ),
    );
  }

  void register() async {
  
    String email = emailCtl.text;
    String password = passwordCtl.text;

    User? user = await _auth.signUpEmailAndPassword(email, password);

    if (user != null) {
      _showMyDialog();
    } else {
      print("Error");
    }
  }

  Future<void> _showMyDialog() async {
    return showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text("Successful"),
            content: const SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Text("Great! You can login now"),
                  Text("Thanks you so much!"),
                ],
              ),
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const LoginApp()));
                  },
                  child: const Text("Ok")),
            ],
          );
        });
  }
}
