// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutix/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'package:image_picker/image_picker.dart';

import 'ui/widgets/widgets.dart';
import 'ui/screens/screens.dart';
import 'provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => MovieProvider()),
        ChangeNotifierProvider(create: (context) => KategoriProvider()),
        ChangeNotifierProvider(create: (context) => TopUpProvider()),
        ChangeNotifierProvider(create: (context) => ProviderUser()),
      ],
      child: MaterialApp(
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
          "/home": (context) => BottomNavScreen(),
          "/jadwal": (context) => JadwalFilm(), // buat tes halaman
          "/signup1": (context) => SignUp1(),
          "/movieDetail": (context) => DetailMoviePage(),
          "/login": (context) => LoginPage(),
          "/tempat": (context) => SelectSeatPage(),
          "/checkout":(context) => CheckoutPage(),
          "checkoutSukses":(context) => SuccessCheckout()
        },
        theme: temaApp,
        initialRoute: "/home",
      ),
    );
  }
}
