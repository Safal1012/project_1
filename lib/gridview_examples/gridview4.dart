import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: GridView4(),
    ),
  );
}

class GridView4 extends StatelessWidget {
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
                      Icon(
                        Icons.account_circle,
                        size: 30,
                      ),
                      SizedBox(
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
