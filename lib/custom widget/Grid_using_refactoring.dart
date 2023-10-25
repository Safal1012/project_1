import 'package:flutter/material.dart';
import 'package:project_1/custom%20widget/refractoring_widget.dart';

void main() {
  runApp(MaterialApp(
    home: Grid_with_Refractoring(),
  ));
}

class Grid_with_Refractoring extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grid with Refractoring Widget'),
      ),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, crossAxisSpacing: 15, mainAxisSpacing: 15),
        children: [
          Custom_Card(
            image: const NetworkImage(
                "https://plus.unsplash.com/premium_photo-1694825173178-3d2c9bbf5b5f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1469&q=80"),
            text: 'My Product',
            click: () {},
            click1: () {},
          ),
          Custom_Card(
            image: const NetworkImage(
                "https://plus.unsplash.com/premium_photo-1694825173178-3d2c9bbf5b5f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1469&q=80"),
            text: 'My Product2',
            click: () {},
            click1: () {},
          ),
        ],
      ),
    );
  }
}
