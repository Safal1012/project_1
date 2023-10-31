import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final data;
  const HomePage({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    var name = data[0]['name'];
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome $name"),
      ),
      body: Center(
        child: Text("Success"),
      ),
    );
  }
}
