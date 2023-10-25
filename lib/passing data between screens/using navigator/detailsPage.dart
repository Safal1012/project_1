import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_1/passing%20data%20between%20screens/using%20navigator/dummydata.dart';

class ProductDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // id from previous page
    var id = ModalRoute.of(context)?.settings.arguments;
    var product = products.firstWhere((product) => product['id'] == id);
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Details'),
      ),
      body: Center(
        child: Column(
          children: [
            Image.network(
              product['image'],
              height: 300,
              width: 500,
            ),
            Text(product['name'], style: GoogleFonts.fahkwang(fontSize: 30)),
            Text('${product['price']}', style: TextStyle(fontSize: 15)),
            Text('${product['rating']}', style: TextStyle(fontSize: 15)),
            Padding(
              padding: const EdgeInsets.all(10),
              child:
                  Text(product['description'], style: TextStyle(fontSize: 10)),
            )
          ],
        ),
      ),
    );
  }
}
