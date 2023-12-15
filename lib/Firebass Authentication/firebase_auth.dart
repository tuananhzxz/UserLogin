


import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthentication {

   FirebaseAuth _auth = FirebaseAuth.instance;

  Future<User?> signUpEmailAndPassword(String email, String password) async {
    
    try {
      UserCredential credential = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      return credential.user;
    } catch(e) {
      print("Error");
    }
    return null;

  }

  Future<User?> signInWithEmailAndPassword(String email, String password) async {
    
    try {
      UserCredential credential = await _auth.signInWithEmailAndPassword(email: email, password: password);
      return credential.user;
    } catch(e) {
      print("Error");
    }
    return null;

  }

}