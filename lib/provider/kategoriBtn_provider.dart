// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutix/ui/widgets/widgets.dart';
import 'package:flutter/material.dart';

class Kategori {
  int id;
  String nama;
  IconData icon;
  double btnWidth;
  double btnHeight;
  Color bgColor;
  Color foreColor;

  Kategori({
    required this.id,
    required this.nama,
    required this.icon,
    required this.btnWidth,
    required this.btnHeight,
    required this.bgColor,
    required this.foreColor,
  });
}

class KategoriProvider extends ChangeNotifier {
  int counterClicked = 0;

  final List<Kategori> kategoriData = [
    Kategori(
      id: 1,
      nama: "Romance",
      icon: Icons.favorite_outline,
      btnWidth: 160,
      btnHeight: 42,
      bgColor: warnaApp.primary,
      foreColor: warnaApp.secondary,
    ),
    Kategori(
      id: 2,
      nama: "Comedy",
      icon: Icons.mood_outlined,
      btnWidth: 160,
      btnHeight: 42,
      bgColor: warnaApp.primary,
      foreColor: warnaApp.secondary,
    ),
    Kategori(
      id: 3,
      nama: "Horror",
      icon: Icons.sentiment_very_dissatisfied_sharp,
      btnWidth: 143,
      btnHeight: 42,
      bgColor: warnaApp.primary,
      foreColor: warnaApp.secondary,
    ),
    Kategori(
      id: 4,
      nama: "Action",
      icon: Icons.local_fire_department_outlined,
      btnWidth: 143,
      btnHeight: 42,
      bgColor: warnaApp.primary,
      foreColor: warnaApp.secondary,
    ),
    Kategori(
      id: 5,
      nama: "Thriller",
      icon: Icons.water_drop_outlined,
      btnWidth: 160,
      btnHeight: 42,
      bgColor: warnaApp.primary,
      foreColor: warnaApp.secondary,
    ),
    Kategori(
      id: 6,
      nama: "Fantasy",
      icon: Icons.auto_fix_high_outlined,
      btnWidth: 160,
      btnHeight: 42,
      bgColor: warnaApp.primary,
      foreColor: warnaApp.secondary,
    ),
    Kategori(
      id: 7,
      nama: "Sci-Fi",
      icon: Icons.smart_toy_outlined,
      btnWidth: 149,
      btnHeight: 42,
      bgColor: warnaApp.primary,
      foreColor: warnaApp.secondary,
    ),
    Kategori(
      id: 8,
      nama: "Adventure",
      icon: Icons.vpn_key_outlined,
      btnWidth: 163,
      btnHeight: 42,
      bgColor: warnaApp.primary,
      foreColor: warnaApp.secondary,
    ),
    Kategori(
      id: 9,
      nama: "Mystery",
      icon: Icons.person_search_outlined,
      btnWidth: 160,
      btnHeight: 42,
      bgColor: warnaApp.primary,
      foreColor: warnaApp.secondary,
    ),
    Kategori(
      id: 10,
      nama: "War",
      icon: Icons.keyboard_capslock_outlined,
      btnWidth: 143,
      btnHeight: 42,
      bgColor: warnaApp.primary,
      foreColor: warnaApp.secondary,
    ),
    Kategori(
      id: 11,
      nama: "Documentary",
      icon: Icons.videocam_outlined,
      btnWidth: 232,
      btnHeight: 42,
      bgColor: warnaApp.primary,
      foreColor: warnaApp.secondary,
    ),
  ];

  int get btnCount {
    return kategoriData.length;
  }

  final List<int> kategoriClicked = [];

  void updateBtn(int index) {
    if (kategoriClicked.contains(index) == false) {
      kategoriData[index].bgColor = warnaApp.secondary;
      kategoriData[index].foreColor = warnaApp.primary;
      kategoriClicked.add(index);
    } else if (kategoriClicked.contains(index) == true) {
      kategoriData[index].bgColor = warnaApp.primary;
      kategoriData[index].foreColor = warnaApp.secondary;
      kategoriClicked.remove(index);
    }
    if (kategoriClicked.length == 5) {
      kategoriData[index].bgColor = warnaApp.primary;
      kategoriData[index].foreColor = warnaApp.secondary;
      kategoriClicked.removeLast();
    }
    print(kategoriClicked);
    notifyListeners();
  }
}
