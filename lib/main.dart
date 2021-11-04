import 'dart:math';

import 'package:batch_c_demo/log_in.dart';
import 'package:batch_c_demo/my_home_page.dart';
import 'package:batch_c_demo/second_page.dart';
import 'package:batch_c_demo/third_page.dart';
import 'package:flutter/material.dart';


void main() {
  runApp( MyApp());
}
class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);
  final navigatorKey = GlobalKey<NavigatorState>();
  @override
  Widget build(BuildContext context) {
    return
      MaterialApp(
      navigatorKey: navigatorKey,
      home:  LogIn(),
    );
  }
}

