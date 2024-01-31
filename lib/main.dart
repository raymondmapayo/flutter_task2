import 'package:flutter/material.dart';
import 'package:mapayo_task2_week4_5/addpage.dart';
import 'package:mapayo_task2_week4_5/login.dart';
import 'package:mapayo_task2_week4_5/page1.dart';
import 'package:mapayo_task2_week4_5/register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: false,
      ),
      home: Login(),
    );
  }
}
