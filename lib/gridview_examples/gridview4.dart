import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: GridView4(),
    ),
  );
}

class GridView4 extends StatelessWidget {
  const GridView4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.extent(
        maxCrossAxisExtent: 150,
        // crossAxisSpacing: 10,
        children: List.generate(
            10,
            (index) => Card(
                  child: Row(
                    children: [
                      const Icon(
                        Icons.account_circle,
                        size: 30,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Text(
                          "Children",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors
                                .primaries[index % Colors.primaries.length],
                          ),
                        ),
                      )
                    ],
                  ),
                )),
      ),
    );
  }
}
