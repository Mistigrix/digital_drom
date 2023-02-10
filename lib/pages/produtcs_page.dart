import 'dart:convert';

import 'package:digital_drom/product.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class ProductsPage extends StatefulWidget {
  const ProductsPage({Key? key}) : super(key: key);

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {

  late Future<Product> products_list;

  Future<Product> getFutureProducts() async {
    var url = Uri.parse("http://192.168.252.67:3000/api/products");
    var response = await http.get(url);

    return Product.fromJson(jsonDecode(response.body));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    products_list = getFutureProducts();
    print(products_list);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Touts nos Produits")
      ),
      body: Center(
          child: FutureBuilder(
            future: products_list,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text("Voici nos produits");
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }
              // By default, show a loading spinner.
              return const CircularProgressIndicator();
            },
          )
      ),
    );;
  }
}

