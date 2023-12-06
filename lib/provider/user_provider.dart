// ignore_for_file: file_names, no_leading_underscores_for_local_identifiers

part of 'provider.dart';

class ProviderUser extends ChangeNotifier {
  final List<UserData> _users = [];

  UnmodifiableListView<UserData> get users => UnmodifiableListView(_users);

  int get userCount {
    return _users.length;
  }

  void addUser(UserData newUser) {
    _users.add(newUser);
    notifyListeners();
  }
}
