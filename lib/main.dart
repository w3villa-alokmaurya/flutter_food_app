import 'package:flutter/material.dart';
import 'package:flutter_app_food/login.dart';
import 'package:flutter_app_food/otp_screen.dart';
import 'package:flutter_app_food/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": (context) => LoginScreen(),
        "/login": (context) => LoginScreen(),
        "/signup": (context) => SignupScreen(),
        "/otp_verify": (context) => OtpScreen(),
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
    );
  }
}
