part of 'models.dart';

class User {
  String? name;
  String? email;
  String? password;
  String? confirmPassword;
  String? profilePicture;
  String? language;
  List<String>? genre;

  User({
    this.name,
    this.email,
    this.password,
    this.confirmPassword,
    this.language,
    this.profilePicture,
    this.genre,
  });

  factory User.fromFirebaseUser(firebase_auth.User? firebaseUser) {
    if (firebaseUser == null) {
      return User(
        name: '',
        email: '',
        password: '',
        confirmPassword: '',
        genre: [],
        profilePicture: '',
        language: '',
      );
    }

    return User(
      name: '',
      email: '',
      password: '',
      confirmPassword: '',
      genre: [],
      profilePicture: '',
      language: '',
    );
  }
}
