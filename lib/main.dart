// ignore_for_file: prefer_const_constructors

import 'package:flutix/ui/models/models.dart';
import 'package:flutix/ui/screens/login_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import 'ui/widgets/widgets.dart';
import 'ui/screens/screens.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

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
        "/userProfiling2": (context) => UserProfiling2(),
        "/home": (context) => BottomNavScreen(),
        "/tes": (context) => JadwalFilm(), // buat tes halaman
        "/signup":(context)=> SignUp1(),
        "/movieDetail": (context) => DetailMoviePage(),
        "/login":(context) => LoginPage(),
      },
      theme: temaApp,
      initialRoute: "/movieDetail",
    );
  }
}
