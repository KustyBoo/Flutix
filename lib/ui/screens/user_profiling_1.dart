// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutix/ui/widgets/elevated_btn_icon.dart';
import 'package:flutter/material.dart';

class UserProfiling1 extends StatefulWidget {
  @override
  State<UserProfiling1> createState() => _UserProfiling1State();
}

class _UserProfiling1State extends State<UserProfiling1> {
  bool btnClicked1 = false;
  bool btnClicked2 = false;
  bool btnClicked3 = false;
  bool btnClicked4 = false;
  bool btnClicked5 = false;
  bool btnClicked6 = false;
  bool btnClicked7 = false;
  bool btnClicked8 = false;
  bool btnClicked9 = false;
  bool btnClicked10 = false;
  bool btnClicked11 = false;

  bool btnAktif = false;

  void cek() {
    if (btnClicked1 == true ||
        btnClicked2 == true ||
        btnClicked3 == true ||
        btnClicked4 == true ||
        btnClicked5 == true ||
        btnClicked6 == true ||
        btnClicked7 == true ||
        btnClicked8 == true ||
        btnClicked9 == true ||
        btnClicked10 == true ||
        btnClicked11 == true) {
      setState(() {
        btnAktif = true;
      });
    }
    if (btnClicked1 == false &&
        btnClicked2 == false &&
        btnClicked3 == false &&
        btnClicked4 == false &&
        btnClicked5 == false &&
        btnClicked6 == false &&
        btnClicked7 == false &&
        btnClicked8 == false &&
        btnClicked9 == false &&
        btnClicked10 == false &&
        btnClicked11 == false) {
      setState(() {
        btnAktif = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            //mengisi layar yang kosong
            ListView(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.15,
                    right: 16,
                    left: 16,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        child: Text(
                          "What's your type?",
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(
                          top: 42,
                        ),
                        child: Wrap(
                          crossAxisAlignment: WrapCrossAlignment.start,
                          spacing: 8,
                          runSpacing: 10,
                          children: [
                            ElevatedBtnIcon(
                              btnClicked: btnClicked1,
                              iconCustom: Icons.favorite_outline,
                              teksCustom: "Romance",
                              lebarBtn: 160,
                              tinggiBtn: 42,
                              fungsiCustom: () {
                                setState(() {
                                  btnClicked1 = !btnClicked1;
                                  cek();
                                });
                              },
                            ),
                            ElevatedBtnIcon(
                              btnClicked: btnClicked2,
                              iconCustom: Icons.mood_outlined,
                              teksCustom: "Comedy",
                              lebarBtn: 160,
                              tinggiBtn: 42,
                              fungsiCustom: () {
                                setState(() {
                                  btnClicked2 = !btnClicked2;
                                  cek();
                                });
                              },
                            ),
                            ElevatedBtnIcon(
                              btnClicked: btnClicked3,
                              iconCustom:
                                  Icons.sentiment_very_dissatisfied_sharp,
                              teksCustom: "Horror",
                              lebarBtn: 143,
                              tinggiBtn: 42,
                              fungsiCustom: () {
                                setState(() {
                                  btnClicked3 = !btnClicked3;
                                  cek();
                                });
                              },
                            ),
                            ElevatedBtnIcon(
                              btnClicked: btnClicked4,
                              iconCustom: Icons.local_fire_department_outlined,
                              teksCustom: "Action",
                              lebarBtn: 143,
                              tinggiBtn: 42,
                              fungsiCustom: () {
                                setState(() {
                                  btnClicked4 = !btnClicked4;
                                  cek();
                                });
                              },
                            ),
                            ElevatedBtnIcon(
                              btnClicked: btnClicked5,
                              iconCustom: Icons.water_drop_outlined,
                              teksCustom: "Thriller",
                              lebarBtn: 160,
                              tinggiBtn: 42,
                              fungsiCustom: () {
                                setState(() {
                                  btnClicked5 = !btnClicked5;
                                  cek();
                                });
                              },
                            ),
                            ElevatedBtnIcon(
                              btnClicked: btnClicked6,
                              iconCustom: Icons.auto_fix_high_outlined,
                              teksCustom: "Fantasy",
                              lebarBtn: 143,
                              tinggiBtn: 42,
                              fungsiCustom: () {
                                setState(() {
                                  btnClicked6 = !btnClicked6;
                                  cek();
                                });
                              },
                            ),
                            ElevatedBtnIcon(
                              btnClicked: btnClicked7,
                              iconCustom: Icons.smart_toy_outlined,
                              teksCustom: "Sci-Fi",
                              lebarBtn: 149,
                              tinggiBtn: 42,
                              fungsiCustom: () {
                                setState(() {
                                  btnClicked7 = !btnClicked7;
                                  cek();
                                });
                              },
                            ),
                            ElevatedBtnIcon(
                              btnClicked: btnClicked8,
                              iconCustom: Icons.vpn_key_outlined,
                              teksCustom: "Adventure",
                              lebarBtn: 163,
                              tinggiBtn: 42,
                              fungsiCustom: () {
                                setState(() {
                                  btnClicked8 = !btnClicked8;
                                  cek();
                                });
                              },
                            ),
                            ElevatedBtnIcon(
                              btnClicked: btnClicked9,
                              iconCustom: Icons.person_search_outlined,
                              teksCustom: "Mystery",
                              lebarBtn: 160,
                              tinggiBtn: 42,
                              fungsiCustom: () {
                                setState(() {
                                  btnClicked9 = !btnClicked9;
                                  cek();
                                });
                              },
                            ),
                            ElevatedBtnIcon(
                              btnClicked: btnClicked10,
                              iconCustom: Icons.keyboard_capslock_outlined,
                              teksCustom: "War",
                              lebarBtn: 143,
                              tinggiBtn: 42,
                              fungsiCustom: () {
                                setState(() {
                                  btnClicked10 = !btnClicked10;
                                  cek();
                                });
                              },
                            ),
                            ElevatedBtnIcon(
                              btnClicked: btnClicked11,
                              iconCustom: Icons.videocam_outlined,
                              teksCustom: "Documentary",
                              lebarBtn: 232,
                              tinggiBtn: 42,
                              fungsiCustom: () {
                                setState(() {
                                  btnClicked11 = !btnClicked11;
                                  cek();
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // color: Colors.red,
                        margin: EdgeInsets.only(
                          top: 45,
                        ),
                        child: ElevatedButton(
                          onPressed: btnAktif
                              ? () {
                                  setState(() {
                                    btnAktif = false;
                                  });
                                }
                              : null,
                          child: Text(
                            "Next",
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            Container(
              alignment: Alignment.centerLeft,
              width: MediaQuery.of(context).size.width,
              height: 70,
              //container icon
              child: Container(
                margin: EdgeInsets.only(left: 15, top: 15),
                width: 48,
                height: 70,
                child: IconButton(
                  padding: EdgeInsets.all(0),
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_back_ios,
                    size: 32,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
