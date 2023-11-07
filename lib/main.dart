import 'package:flutter/material.dart';
import 'package:novo/pages/splash_screen.dart';

import 'themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      theme: lightTheme,
      // initialRoute: '/',
      // routes: {
      //   '/': (context) => const SplashScreen(),
      //   '/prayerProcedure': (context) => const PrayerProcedureScreen(),
      //   '/salatProcedure': (context) => const SalatProcedureScreen(),
      // },
    );
  }
}
