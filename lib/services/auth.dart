part of 'services.dart';

class Auth {
  final auth.FirebaseAuth _auth = auth.FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<UserData> regis(
      String name,
      String email,
      String password,
      String confirmPassword,
      List<String> selectedGenres,
      String profilePicture,
      String language) async {
    try {
      await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      auth.User? user = _auth.currentUser;

      await _firestore.collection('users').doc(user!.uid).set(
        {
          'username': name,
          'email': email,
          'balance': 0,
          'profilepicture': profilePicture,
          'selectedGenres': selectedGenres,
          'selectedLanguage': language,
        },
      );

      return UserData(
        name: name,
        email: email,
        password: password,
        confirmPassword: confirmPassword,
        genre: selectedGenres,
        language: language,
        profilePicture: profilePicture,
      );

    } catch (e) {
      print('Registration failed: $e');
      throw e;
    }
  }

  Future<void> login(String email, String password) async {
    final user = await _auth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }
}
