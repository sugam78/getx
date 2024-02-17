import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/Counter/counter_screen.dart';
import 'package:getx/Favourite/favourite_screen.dart';
import 'package:getx/LoginApi/login_screen.dart';
import 'package:getx/Slider/slider_screen.dart';
import 'package:getx/Switch/switch_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: LoginScreen(),
    );
  }
}

