import 'package:flutter/material.dart';
import 'package:project_1/storages/loginshared.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeShared extends StatefulWidget {
  @override
  State<HomeShared> createState() => _HomeSharedState();
}

class _HomeSharedState extends State<HomeShared> {
  late SharedPreferences prefs;
  String? user;

  @override
  void initState() {
    fetchUser();
  }

  void fetchUser() async {
    prefs = await SharedPreferences.getInstance();
    setState(() {
      user = prefs.getString('uname');
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Welcome $user'),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                prefs.setBool('firstlogin', true);
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => LoginShared()));
              },
              child: const Text("Logout"),
            )
          ],
        ),
      ),
    );
  }
}
