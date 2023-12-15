import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:userapp/Model/button.dart';
import 'package:userapp/Pages/login.dart';
import 'package:userapp/Values/app_color.dart';

class loginSuccess extends StatelessWidget {
  const loginSuccess({super.key});

  // FirebaseAuthentication _auth = FirebaseAuthentication();

  @override
  Widget build(BuildContext context) {
    String? email = FirebaseAuth.instance.currentUser?.email;
    return Scaffold(
      backgroundColor: MyColor.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Welcome : $email"),
              button(label: "Sign Out", press: (){
                FirebaseAuth.instance.signOut();
                Navigator.push(context, 
                MaterialPageRoute(builder: (context) => const LoginApp())
                );
              })
            ],
          ),
        ),
      ),
    );
  }
}