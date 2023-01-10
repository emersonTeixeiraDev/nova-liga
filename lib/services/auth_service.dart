import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  static Future<bool> login(String email, String password) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return true;
    } on FirebaseAuthException catch (_) {
      return false;
    }
  }
}
