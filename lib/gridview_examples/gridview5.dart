import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: GridView5(),
  ));
}

class GridView5 extends StatelessWidget {
  const GridView5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.custom(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),

          /// childrenDelegate: SliverChildListDelegate([]), or
          childrenDelegate:
              SliverChildBuilderDelegate((context, index) => Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  "https://images.unsplash.com/photo-1671616215399-1dd96cae9917?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1382&q=80")),
                        ),
                      ),
                      const Positioned(
                        bottom: 20,
                        right: 20,
                        child: Text(
                          "40 \$",
                          style: TextStyle(
                              color: Colors.yellow,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                      const Positioned(
                        top: 20,
                        right: 20,
                        child: Icon(
                          Icons.favorite,
                          color: Colors.red,
                          size: 20,
                        ),
                      )
                    ],
                  )),
        ),
      ),
    );
  }
}
