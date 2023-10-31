import 'package:flutter/material.dart';

import '../fi_atm.dart';
import '../gridview_examples/gridview2.dart';
import '../gridview_examples/gridview5.dart';
import '../stateful_login.dart';

void main() {
  runApp(const MaterialApp(
    home: BottomBarEx(),
  ));
}

class BottomBarEx extends StatefulWidget {
  const BottomBarEx({super.key});

  @override
  State<BottomBarEx> createState() => _BottomBarExState();
}

class _BottomBarExState extends State<BottomBarEx> {
  int index = 0;
  var screens = [const FiCard(), const GridView2(), const GridView5(), const Login_stateful()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: ConvexAppBar(
      //     style: TabStyle.react,
      //     items: const [
      //       TabItem(icon: Icons.list),
      //       TabItem(icon: Icons.calendar_today),
      //       TabItem(icon: Icons.assessment),
      //       TabItem(icon: Icons.account_box),
      //     ],
      //     initialActiveIndex: index,
      //     onTap: (tapedindex) {
      //       setState(() {
      //         index =
      //             tapedindex; // here index value change according to each tap
      //       });
      //     }),

      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          // type: BottomNavigationBarType.shifting,
          elevation: 5,
          backgroundColor: Colors.green,
          selectedItemColor: Colors.yellow,
          currentIndex: index,
          onTap: (tapedindex) {
            setState(() {
              index =
                  tapedindex; // here index value change according to each tap
            });
          },
          items: const [
            BottomNavigationBarItem(
                backgroundColor: Colors.brown,
                icon: Icon(Icons.home),
                label: "Home"),
            BottomNavigationBarItem(
                backgroundColor: Colors.green,
                icon: Icon(Icons.add_box_rounded),
                label: 'Reels'),
            BottomNavigationBarItem(
                backgroundColor: Colors.red,
                icon: Icon(Icons.park_rounded),
                label: 'Notify'),
            BottomNavigationBarItem(
                backgroundColor: Colors.blue,
                icon: Icon(Icons.account_box),
                label: 'Profile')
          ]),
      body: screens[index],
    );
  }
}
