// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

part of 'widgets.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int currentIndex = 0;

  List<Widget> screen = [
    HomeScreen(),
    Center(child: Text("movie")),
    Center(child: Text("tiket")),
    Center(child: Text("teater")),
    ProfileSetting(),
  ];

  Color warnaFAB = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        width: 65,
        height: 65,
        child: FloatingActionButton(
          onPressed: () {
            setState(() {
              currentIndex = 2;
              warnaFAB = warnaApp.onPrimaryContainer;
            });
          },
          child: Icon(
            Icons.confirmation_num,
            size: 40,
            color: warnaFAB,
          ),
        ),
      ),
      bottomNavigationBar: Theme(
        data: ThemeData(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: BottomNavigationBar(
          iconSize: 32,
          type: BottomNavigationBarType.fixed,
          backgroundColor: warnaApp.primaryContainer,
          selectedFontSize: 0,
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
              if (currentIndex != 2) {
                warnaFAB = warnaApp.onSecondary;
              }
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: warnaApp.onSecondary,
              ),
              activeIcon: Icon(
                Icons.home,
                color: warnaApp.onPrimaryContainer,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.theaters,
                color: warnaApp.onSecondary,
              ),
              activeIcon: Icon(
                Icons.theaters,
                color: warnaApp.onPrimaryContainer,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(null),
              activeIcon: Icon(null),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.business,
                color: warnaApp.onSecondary,
              ),
              activeIcon: Icon(
                Icons.business,
                color: warnaApp.onPrimaryContainer,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: warnaApp.onSecondary,
              ),
              activeIcon: Icon(
                Icons.person,
                color: warnaApp.onPrimaryContainer,
              ),
              label: "",
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: screen.elementAt(currentIndex),
    );
  }
}
