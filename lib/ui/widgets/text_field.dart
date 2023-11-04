// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutix/ui/widgets/theme_data.dart';
import 'package:flutter/material.dart';

class TextFLD extends StatelessWidget {
  TextFLD({super.key, required this.teksHint, required this.teks});

  String teksHint;

  var teks = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: teks,
      style: Theme.of(context).textTheme.displaySmall,
      maxLength: 6,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(2),
          borderSide: BorderSide(
            color: warnaApp.onPrimary,
            width: 1,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(2),
          borderSide: BorderSide(
            color: warnaApp.onPrimary,
            width: 1,
          ),
        ),
        contentPadding: EdgeInsets.fromLTRB(10, 13, 10, 13),
        hintText: teksHint,
        hintStyle: Theme.of(context).textTheme.displaySmall,
        counterText: "",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(2),
          borderSide: BorderSide(
            color: warnaApp.onPrimary,
            width: 1,
          ),
        ),
      ),
    );
  }
}
