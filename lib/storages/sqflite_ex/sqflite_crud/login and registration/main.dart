import 'package:flutter/material.dart';
import 'package:project_1/storages/sqflite_ex/sqflite_crud/login%20and%20registration/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login_Signup(),
      theme: ThemeData(primarySwatch: Colors.pink),
    );
  }
}
