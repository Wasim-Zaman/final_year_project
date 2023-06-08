import 'package:ecommerce/constants/app_colors.dart';
import 'package:ecommerce/constants/app_styles.dart';
import 'package:ecommerce/screens/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ecommerce',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: primaryColor,
          secondary: secondaryColor,
          primary: primaryColor,
        ).copyWith(
          background: transparent,
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: transparentColor,
        ),
        fontFamily: regular,
      ),
      home: const SplashScreen(),
    );
  }
}
