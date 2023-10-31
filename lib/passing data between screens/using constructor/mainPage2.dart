import 'package:flutter/material.dart';
import 'package:project_1/passing%20data%20between%20screens/using%20constructor/toStatefulPage.dart';
import 'package:project_1/passing%20data%20between%20screens/using%20constructor/toStatelessPage.dart';
import 'package:project_1/passing%20data%20between%20screens/using%20navigator/dummydata.dart';

void main() {
  runApp(const MaterialApp(
    home: MainPage2(),
  ));
}

class MainPage2 extends StatelessWidget {
  const MainPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Passing'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => DataStateless(
                        name: "Luminar",
                        location: "Kakkanad",
                        phone: 9845678934,
                        img: products[0]['image']))),
                child: const Text('To StateLess')),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => DataStateful(
                        name: "Luminar",
                        location: "Kakkanad",
                        phone: 9845678934,
                        img: products[3]['image']))),
                child: const Text('To StateFul'))
          ],
        ),
      ),
    );
  }
}
