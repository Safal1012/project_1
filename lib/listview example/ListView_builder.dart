import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ListView_Builder(),
  ));
}

class ListView_Builder extends StatelessWidget {
  var images = [
    "assets/images/bananas.png",
    "assets/images/bibimbap.png",
    "assets/images/donut.png",
    "assets/images/grapes.png",
    "assets/images/hamburger.png",
    "assets/images/orange.png",
    "assets/images/pineapple.png",
    "assets/images/pizza.png",
    "assets/images/ramen.png",
    "assets/images/salad.png"
  ];

  ListView_Builder({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView Builder"),
      ),
      body: ListView(children: [
        const ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.teal,
            child: Icon(Icons.insert_link_outlined),
          ),
          title: Text("Create Call Link"),
          subtitle: Text('Share a link'),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 18.0),
          child: Text("Recent"),
        ),
        ListView.builder(
            physics:
                const NeverScrollableScrollPhysics(), // turn off scrolling property of inner listview
            shrinkWrap: true,
            itemCount: 10,
            itemBuilder: (context, index) {
              return ListTile(
                title: const Text("hello"),
                subtitle: const Row(
                  children: [
                    Icon(
                      Icons.call_missed_rounded,
                      color: Colors.red,
                    ),
                    Text("25 Sep 2023,"),
                    Text('10.07')
                  ],
                ),
                leading: Image.asset(images[index]),
                trailing: const Icon(Icons.call),
              );
            }),
      ]),
    );
  }
}
