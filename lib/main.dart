// ignore_for_file: prefer_const_constructors

import 'package:flutix/ui/screens/success_checkout.dart';
import 'package:flutix/ui/screens/user_profiling_1.dart';
import 'package:flutix/ui/screens/wallet.dart';
import 'package:flutix/ui/widgets/bottom_nav_bar.dart';
import 'package:flutix/ui/widgets/scroll_behaviour.dart';
import 'package:flutix/ui/widgets/theme_data.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      builder: (context, child) {
        return ScrollConfiguration(
          behavior: ScrBehaviour(),
          child: child!,
        );
      },
      routes: {
        "/successCheckout": (context) => SuccessCheckout(),
        "/wallet": (context) => Wallet(),
        "/userProfiling1": (context) => UserProfiling1(),
        "/home": (context) => BottomNavScreen(),
      },
      theme: temaApp,
      initialRoute: "/successCheckout",
    );
  }
}
