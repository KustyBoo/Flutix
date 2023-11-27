part of 'services.dart';

class Auth {
  final auth.FirebaseAuth _auth = auth.FirebaseAuth.instance;
  Future<void> regis(String email, String password) async {
    final user = await _auth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  Future<void> login(String email, String password) async {
    final user = await _auth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }
}