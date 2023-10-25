import 'package:flutter/material.dart';

class DataStateless extends StatelessWidget {
  String name;
  String? location;
  int phone;
  String img;
  DataStateless(
      {super.key,
      required this.name,
      this.location,
      required this.phone,
      required this.img});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network("$img", height: 200),
            Text("Name :   $name", style: TextStyle(fontSize: 40)),
            Text("Location :  $location", style: TextStyle(fontSize: 30)),
            Text("Phone :   $phone", style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
