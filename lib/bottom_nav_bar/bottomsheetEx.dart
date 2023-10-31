import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MaterialApp(
    home: BottomSheet(),
  ));
}

class BottomSheet extends StatelessWidget {
  const BottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Sheet'),
      ),
      body: Center(
        child: GestureDetector(
          onLongPress: () {
            showSheet(context);
          },
          child: Image.network(
            "https://plus.unsplash.com/premium_photo-1693153496717-40703a0e73be?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1374&q=80",
            height: 200,
          ),
        ),
      ),
    );
  }

  void showSheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return const Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  'Share Via',
                  style: TextStyle(fontSize: 15),
                ),
              ),
              Divider(),
              ListTile(
                leading: FaIcon(FontAwesomeIcons.whatsapp, color: Colors.green),
                title: Text('Whatsapp'),
              ),
              ListTile(
                leading: FaIcon(FontAwesomeIcons.instagram, color: Colors.pink),
                title: Text('Instagram'),
              )
            ],
          );
        });
  }
}
