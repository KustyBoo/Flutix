part of 'provider.dart';

class PageProvider extends ChangeNotifier {
  int _bottomNavBarIndex = 0;

  int get bottomNavBarIndex => _bottomNavBarIndex;

  void bottomNavClicked(int index) {
    _bottomNavBarIndex = index;
    notifyListeners();
  }
}