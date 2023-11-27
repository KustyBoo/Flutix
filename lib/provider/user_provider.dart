// ignore_for_file: file_names, no_leading_underscores_for_local_identifiers

part of 'provider.dart';

class PlaceholderUser{
  String nama;
  String email;
  String password;

  PlaceholderUser({
    required this.nama,
    required this.email,
    required this.password,
  });

  void disposeUser(){
    nama = "";
    email = "";
    password = "";
  }

  String getNama(String _nama){
    _nama = nama;
    return _nama;
  }

  String getEmail(String _email){
    _email = email;
    return _email;
  }

  String getPassword(String _password){
    _password = password;
    return _password;
  }
}
