import 'package:flutter/material.dart';
import 'package:project_1/listview%20example/ListView_builder.dart';
import 'package:project_1/listview%20example/listview2.dart';
import 'package:project_1/listview%20example/listview_constructor.dart';
import 'package:project_1/listview%20example/listview_separator.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.teal),
    debugShowCheckedModeBanner: false,
    home: const AppBar1(),
  ));
}

class AppBar1 extends StatelessWidget {
  const AppBar1({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Whatsapp"),
          actions: [
            const Icon(Icons.camera_alt_outlined),
            const SizedBox(
              width: 15,
            ),
            const Icon(Icons.search_rounded),
            PopupMenuButton(itemBuilder: (context) {
              return [
                const PopupMenuItem(child: Text("New group")),
                const PopupMenuItem(child: Text("New broadcast")),
                const PopupMenuItem(child: Text("Linked devices")),
                const PopupMenuItem(child: Text("Starred messages")),
                const PopupMenuItem(child: Text("Payments")),
                const PopupMenuItem(child: Text("Settings")),
              ];
            }),
          ],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(AppBar().preferredSize.height),
            child: Container(
              child: const TabBar(
                tabs: [
                  Tab(
                    icon: Icon(
                      Icons.people_alt_rounded,
                    ),
                  ),
                  Tab(
                    text: "Chats",
                  ),
                  Tab(
                    text: "Updates",
                  ),
                  Tab(
                    text: "Calls",
                  )
                ],
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            const ListView1(),
            ListView2(),
            const ListView_Separator(),
            ListView_Builder(),
          ],
        ),
      ),
    );
  }
}
