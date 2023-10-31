import 'package:flutter/material.dart';

class DataStateful extends StatefulWidget {
  String name;
  String? location;
  int phone;
  String img;
  DataStateful(
      {super.key,
      this.location,
      required this.phone,
      required this.img,
      required this.name});

  @override
  State<DataStateful> createState() => _DataStatefulState();
}

class _DataStatefulState extends State<DataStateful> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.name),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(widget.img, height: 200),
            Text("Name :   ${widget.name}", style: const TextStyle(fontSize: 40)),
            Text("Location :  ${widget.location}",
                style: const TextStyle(fontSize: 30)),
            Text("Phone :   ${widget.phone}", style: const TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
