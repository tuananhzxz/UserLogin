import 'package:userapp/Firebass%20Authentication/firebase_auth.dart';
import 'package:userapp/Model/button.dart';
import 'package:userapp/Model/textfield.dart';
import 'package:userapp/Pages/home.dart';
import 'package:userapp/Pages/loginsuccess.dart';
import 'package:userapp/Pages/register.dart';
import 'package:userapp/Values/app_color.dart';
import 'package:userapp/Values/app_font.dart';
import 'package:userapp/Values/app_images.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginApp extends StatefulWidget {
  const LoginApp({super.key});

  @override
  State<LoginApp> createState() => _LoginAppState();
}

class _LoginAppState extends State<LoginApp> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  final FirebaseAuthentication _auth = FirebaseAuthentication();

  bool isChecked = false;
  bool isEP = false;

  @override
  void dispose() {
    email.dispose();
    password.dispose();
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
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "LOGIN",
                style: MyFont.h2,
              ),
              const SizedBox(height: 10),
              Image.asset(
                MyImages.image2,
                width: size.width * 0.5,
              ),
              const SizedBox(height: 10),
              textField(controller: email, hint: "Email", icon: Icons.email),
              textField(
                controller: password,
                hint: "PassWord",
                icon: Icons.lock,
                passWordHide: true,
              ),
              button(
                  label: "Login",
                  press: () {
                    login();
                  },
                ),
              // ListTile(
              //   horizontalTitleGap: 2,
              //   title: Text(
              //     "Remember me",
              //     style: MyFont.h5,
              //   ),
              //   leading: Checkbox(
              //     value: isChecked,
              //     onChanged: (value) {
              //       setState(() {
              //         isChecked = !isChecked;
              //       });
              //     },
              //   ),
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account?"),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    const RegisterApp()));
                      },
                      child: const Text("Register")),
                ],
              ),
              isEP
                  ? const Text(
                      "Email or Password don't correct",
                      style: TextStyle(
                          color: Colors.yellow, fontWeight: FontWeight.bold),
                    )
                  : const SizedBox(),
            ],
          ),
        ),
      ),
    );
  }

  void login() async {
    String emaill = email.text;
    String passwordd = password.text;

    User? user = await _auth.signInWithEmailAndPassword(emaill, passwordd);

    if (user != null) {
     
      _showMyDialog();
    } else {
      setState(() {
        isEP = true;
      });
    }
  }

  Future<void> _showMyDialog() async {
    return showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text("Login Successful"),
            content: const SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Text("Great! You are login"),
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
                                const loginSuccess()));
                  },
                  child: const Text("Ok")),
            ],
          );
        });
}
}