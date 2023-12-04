// ignore_for_file: file_names, no_leading_underscores_for_local_identifiers

part of 'provider.dart';

class ProviderUser extends ChangeNotifier {
  final List<User> _users = [];

  UnmodifiableListView<User> get users => UnmodifiableListView(_users);

  int get userCount {
    return _users.length;
  }

  void addUser(User newUser) {
    _users.add(newUser);
    notifyListeners();
  }
}
