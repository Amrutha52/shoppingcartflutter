import 'dart:io';

import 'package:flutter/material.dart';
import 'package:ui14062024/getstarted_screen/GetStartedScreen.dart';
import 'package:ui14062024/home_screen/home_screen.dart';
import 'package:ui14062024/product_details_screen/ProductDetailsScreen.dart';

import 'MyHttpOverrides.dart';

void main() {
  HttpOverrides.global = MyHttpOverrides();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      home: GetStartedScreen(),
    );
  }
}

