import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ExpansionTileEx(),
  ));
}

class ExpansionTileEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('expansion card'),
      ),
      body: const Column(
        children: [
          ExpansionTile(
            title: Text('Colors'),
            subtitle: Text('expand to view more'),
            children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.red,
                ),
                title: Text('Red'),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.yellow,
                ),
                title: Text('Yellow'),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.green,
                ),
                title: Text('Green'),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.blue,
                ),
                title: Text('Blue'),
              ),
            ],
          ),
          ExpansionTile(
            title: Text('Settings'),
            subtitle: Text('expand to view more'),
            children: [
              ListTile(
                leading: Icon(
                  Icons.add_a_photo,
                ),
                title: Text('Photo'),
              ),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('User'),
              ),
              ListTile(
                leading: Icon(Icons.account_box),
                title: Text('Contacts'),
              ),
              ListTile(
                leading: Icon(Icons.safety_check),
                title: Text('Privacy'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
