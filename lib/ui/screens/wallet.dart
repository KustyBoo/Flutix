// ignore_for_file: prefer_const_constructors

import 'package:dotted_line/dotted_line.dart';
import 'package:flutix/ui/widgets/elevated_btn_icon.dart';
import 'package:flutix/ui/widgets/text_field.dart';
import 'package:flutix/ui/widgets/theme_data.dart';
import 'package:flutter/material.dart';

class Wallet extends StatefulWidget {
  const Wallet({super.key});

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
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

  final TextEditingController _controllerTeks = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Column(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left: 15, top: 15),
                  height: 70,
                  //container icon
                  child: Row(
                    children: [
                      Container(
                        width: 48,
                        height: 70,
                        child: IconButton(
                          padding: EdgeInsets.all(0),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.arrow_back_ios,
                            size: 32,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        child: Text(
                          "Wallet",
                          style: Theme.of(context).textTheme.displayLarge,
                        ),
                      ),
                    ],
                  ),
                ),
                DottedLine(
                  lineThickness: 2,
                  dashLength: 4,
                  dashGapRadius: 4,
                  dashColor: warnaApp.primaryContainer.withOpacity(0.6),
                ),
                Expanded(
                  child: ListView(
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(10, 14, 10, 0),
                        child: Column(
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Amount",
                                style: Theme.of(context).textTheme.displaySmall,
                              ),
                            ),
                            SizedBox(
                              height: 14,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: 50,
                              child: TextFLD(
                                teksHint: "IDR",
                                teks: _controllerTeks,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(10, 30, 10, 27),
                        child: Column(
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Top Up Amount",
                                style: Theme.of(context).textTheme.displaySmall,
                              ),
                            ),
                            SizedBox(
                              height: 14,
                            ),
                            Container(
                              child: Wrap(
                                spacing: 15,
                                runSpacing: 10,
                                children: [
                                  ElevatedBtnIcon(
                                    btnClicked: btnClicked1,
                                    iconCustom: Icons.paid,
                                    teksCustom: 'Rp500.000',
                                    lebarBtn:
                                        MediaQuery.of(context).size.width *
                                            0.45,
                                    tinggiBtn: 42,
                                    fungsiCustom: () {
                                      setState(
                                        () {
                                          btnClicked1 = !btnClicked1;
                                          _controllerTeks.text = "500.000";
                                        },
                                      );
                                    },
                                  ),
                                  ElevatedBtnIcon(
                                    btnClicked: btnClicked2,
                                    iconCustom: Icons.paid,
                                    teksCustom: 'Rp500.000',
                                    lebarBtn:
                                        MediaQuery.of(context).size.width *
                                            0.45,
                                    tinggiBtn: 42,
                                    fungsiCustom: () {
                                      setState(
                                        () {
                                          btnClicked2 = !btnClicked2;
                                          _controllerTeks.text = "500.000";
                                        },
                                      );
                                    },
                                  ),
                                  ElevatedBtnIcon(
                                    btnClicked: btnClicked3,
                                    iconCustom: Icons.paid,
                                    teksCustom: 'Rp500.000',
                                    lebarBtn:
                                        MediaQuery.of(context).size.width *
                                            0.45,
                                    tinggiBtn: 42,
                                    fungsiCustom: () {
                                      setState(
                                        () {
                                          btnClicked3 = !btnClicked3;
                                          _controllerTeks.text = "500.000";
                                        },
                                      );
                                    },
                                  ),
                                  ElevatedBtnIcon(
                                    btnClicked: btnClicked4,
                                    iconCustom: Icons.paid,
                                    teksCustom: 'Rp500.000',
                                    lebarBtn:
                                        MediaQuery.of(context).size.width *
                                            0.45,
                                    tinggiBtn: 42,
                                    fungsiCustom: () {
                                      setState(
                                        () {
                                          btnClicked4 = !btnClicked4;
                                          _controllerTeks.text = "500.000";
                                        },
                                      );
                                    },
                                  ),
                                  ElevatedBtnIcon(
                                    btnClicked: btnClicked5,
                                    iconCustom: Icons.paid,
                                    teksCustom: 'Rp500.000',
                                    lebarBtn:
                                        MediaQuery.of(context).size.width *
                                            0.45,
                                    tinggiBtn: 42,
                                    fungsiCustom: () {
                                      setState(
                                        () {
                                          btnClicked5 = !btnClicked5;
                                          _controllerTeks.text = "500.000";
                                        },
                                      );
                                    },
                                  ),
                                  ElevatedBtnIcon(
                                    btnClicked: btnClicked6,
                                    iconCustom: Icons.paid,
                                    teksCustom: 'Rp500.000',
                                    lebarBtn:
                                        MediaQuery.of(context).size.width *
                                            0.45,
                                    tinggiBtn: 42,
                                    fungsiCustom: () {
                                      setState(
                                        () {
                                          btnClicked6 = !btnClicked6;
                                          _controllerTeks.text = "500.000";
                                        },
                                      );
                                    },
                                  ),
                                  ElevatedBtnIcon(
                                    btnClicked: btnClicked7,
                                    iconCustom: Icons.paid,
                                    teksCustom: 'Rp500.000',
                                    lebarBtn:
                                        MediaQuery.of(context).size.width *
                                            0.45,
                                    tinggiBtn: 42,
                                    fungsiCustom: () {
                                      setState(
                                        () {
                                          btnClicked7 = !btnClicked7;
                                          _controllerTeks.text = "500.000";
                                        },
                                      );
                                    },
                                  ),
                                  ElevatedBtnIcon(
                                    btnClicked: btnClicked8,
                                    iconCustom: Icons.paid,
                                    teksCustom: 'Rp500.000',
                                    lebarBtn:
                                        MediaQuery.of(context).size.width *
                                            0.45,
                                    tinggiBtn: 42,
                                    fungsiCustom: () {
                                      setState(
                                        () {
                                          btnClicked8 = !btnClicked8;
                                          _controllerTeks.text = "500.000";
                                        },
                                      );
                                    },
                                  ),
                                  ElevatedBtnIcon(
                                    btnClicked: btnClicked9,
                                    iconCustom: Icons.paid,
                                    teksCustom: 'Rp500.000',
                                    lebarBtn:
                                        MediaQuery.of(context).size.width *
                                            0.45,
                                    tinggiBtn: 42,
                                    fungsiCustom: () {
                                      setState(
                                        () {
                                          btnClicked9 = !btnClicked9;
                                          _controllerTeks.text = "500.000";
                                        },
                                      );
                                    },
                                  ),
                                  ElevatedBtnIcon(
                                    btnClicked: btnClicked10,
                                    iconCustom: Icons.paid,
                                    teksCustom: 'Rp500.000',
                                    lebarBtn:
                                        MediaQuery.of(context).size.width *
                                            0.45,
                                    tinggiBtn: 42,
                                    fungsiCustom: () {
                                      setState(
                                        () {
                                          btnClicked10 = !btnClicked10;
                                          _controllerTeks.text = "500.000";
                                        },
                                      );
                                    },
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Divider(
                        thickness: 2,
                        color: warnaApp.primaryContainer,
                        height: 15,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: 0,
              child: GestureDetector(
                onTap: (){},
                child: Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  height: 40,
                  color: warnaApp.secondary,
                  padding: EdgeInsets.fromLTRB(18, 10, 18, 10),
                  child: Text("Top Up", style: Theme.of(context).textTheme.bodySmall,),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
