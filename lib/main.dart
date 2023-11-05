// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'ui/widgets/widgets.dart';
import 'ui/screens/screens.dart';

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
        "/walletTopUp": (context) => WalletTopup(),
        "/userProfiling1": (context) => UserProfiling1(),
        "/home": (context) => BottomNavScreen(),
      },
      theme: temaApp,
      initialRoute: "/wallet",
    );
  }
}
