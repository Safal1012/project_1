import 'package:flutter/material.dart';
import 'package:project_1/passing%20data%20between%20screens/using%20navigator/detailsPage.dart';
import 'package:project_1/passing%20data%20between%20screens/using%20navigator/dummydata.dart';

void main() {
  runApp(MaterialApp(
    home: const ProductMain(),
    routes: {'details': (context) => const ProductDetails()},
  ));
}

class ProductMain extends StatelessWidget {
  const ProductMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Products"),
      ),
      body: GridView(
        padding: const EdgeInsets.all(15),

        /// products list le oro map um one by one ayitt productil varum since list.map() is iterable
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        // children: products
        //     .map((product) => InkWell(
        //           onTap: () => Navigator.of(context)
        //               .pushNamed('details', arguments: product['id']),
        //           child: Card(
        //             child: Column(children: [
        //               Container(
        //                 height: 180,
        //                 decoration: BoxDecoration(
        //                     image: DecorationImage(
        //                         fit: BoxFit.contain,
        //                         image: NetworkImage(product['image']))),
        //               ),
        //               // Image.network(product['image']),
        //               Padding(
        //                 padding: const EdgeInsets.only(top: 10),
        //                 child: Text(product['name']),
        //               ),
        //               Text('${product['price']}\$'),
        //             ]),
        //           ),
        //         ))
        //     .toList(),
        children: List.generate(
          products.length,
          (index) => InkWell(
            onTap: () => Navigator.of(context)
                .pushNamed('details', arguments: products[index]['id']),
            child: Card(
              child: Column(
                children: [
                  Container(
                    height: 180,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.contain,
                            image: NetworkImage(products[index]['image']))),
                  ),
                  // Image.network(product['image']),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(products[index]['name']),
                  ),
                  Text('${products[index]['price']}\$'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
