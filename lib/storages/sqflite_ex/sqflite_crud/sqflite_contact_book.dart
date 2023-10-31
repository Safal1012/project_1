import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_1/storages/sqflite_ex/sqflite_crud/sql_functions.dart';

void main() {
  runApp(const MaterialApp(
    home: ContactBook(),
  ));
}

class ContactBook extends StatefulWidget {
  const ContactBook({super.key});

  @override
  State<ContactBook> createState() => _ContactBookState();
}

class _ContactBookState extends State<ContactBook> {
  List<Map<String, dynamic>> contacts = [];
  bool isLoading = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MyContacts'),
      ),
      body: isLoading
          ? Text(
              "Create New Contact",
              style: GoogleFonts.sansita(fontSize: 25),
            )
          : ListView.builder(
              itemCount: contacts.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor:
                          Colors.primaries[index % Colors.primaries.length],
                      child: const Icon(Icons.person),
                    ),
                    title: Text(contacts[index]['cname']),
                    subtitle: Text(contacts[index]['cnumber']),
                    trailing: Wrap(
                      children: [
                        IconButton(
                            onPressed: () => showSheet(contacts[index]['id']),
                            icon: const Icon(Icons.edit)),
                        IconButton(
                            onPressed: () =>
                                deleteContact(contacts[index]['id']),
                            icon: const Icon(Icons.delete))
                      ],
                    ),
                  ),
                );
              }),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showSheet(null),
        child: const Icon(Icons.person_add_alt_1_outlined),
      ),
    );
  }

  final name_controller = TextEditingController();
  final num_controller = TextEditingController();
  void showSheet(int? id) {
    if (id != null) {
      final existingcontact =
          contacts.firstWhere((element) => element['id'] == id);
      name_controller.text = existingcontact['cname'];
      num_controller.text = existingcontact['cnumber'];
    }
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (context) {
          return Container(
            padding: EdgeInsets.only(
                top: 15,
                left: 15,
                right: 15,
                bottom: MediaQuery.of(context).viewInsets.bottom + 80),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: TextField(
                    controller: name_controller,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Name",
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextField(
                  controller: num_controller,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Phone",
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: () {
                      if (id == null) {
                        createContact(
                            name_controller.text, num_controller.text);
                      }
                      if (id != null) {
                        updateContact(id);
                      }
                      name_controller.text = "";
                      num_controller.text = "";
                    },
                    child:
                        Text(id == null ? "Create Contact" : "Update Contact"))
              ],
            ),
          );
        });
  }

  Future<void> createContact(String name, String number) async {
    await SQL_Functions.addnewContact(name, number);
    readContact_and_refresh_Ui();
  }

  @override
  void initState() {
    super.initState();
    readContact_and_refresh_Ui();
  }

  Future<void> readContact_and_refresh_Ui() async {
    final mycontacts = await SQL_Functions.readContacts();
    setState(() {
      contacts = mycontacts;
      isLoading = false;
    });
  }

  Future<void> updateContact(int id) async {
    await SQL_Functions.updateContact(
        id, name_controller.text, num_controller.text);
    readContact_and_refresh_Ui(); //to update the list after editing
  }

  Future<void> deleteContact(int id) async {
    showDialog<String>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: const Text('Delete Contact?'),
        content: const Text('Do you want to delete the contact!!!'),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('No'),
          ),
          TextButton(
            onPressed: () async {
              await SQL_Functions.removeContact(id);
              readContact_and_refresh_Ui();
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Successfully Deleted')));
              Navigator.pop(context);
            },
            child: Text('Yes'),
          ),
        ],
      ),
    );
  }
}
