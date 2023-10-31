import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: GridView1(),
  ));
}

class GridView1 extends StatelessWidget {
  const GridView1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GridView1"),
      ),
      body: GridView(
        // this is to show how items will placed in cross axis
        // gridDelegate:
        //     SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        gridDelegate:
            const SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 100),
        children: List.generate(
            15,
            (index) => Card(
                  color: Colors.primaries[index % Colors.primaries.length],
                  child: const Icon(Icons.abc),
                )),
      ),
    );
  }
}
