part of 'models.dart';

class UserData {
  String? name;
  String? email;
  String? password;
  String? confirmPassword;
  String? profilePicture;
  String? language;
  List<String>? genre;

  UserData({
    this.name,
    this.email,
    this.password,
    this.confirmPassword,
    this.language,
    this.profilePicture,
    this.genre,
  });

  factory UserData.fromFirebaseUser(firebase_auth.User? firebaseUser) {
    if (firebaseUser == null) {
      return UserData(
        name: '',
        email: '',
        password: '',
        confirmPassword: '',
        genre: [],
        profilePicture: '',
        language: '',
      );
    }

    return UserData(
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
