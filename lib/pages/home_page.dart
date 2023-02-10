import 'package:digital_drom/pages/produtcs_page.dart';
import 'package:flutter/material.dart';

class home_page extends StatelessWidget {
  const home_page({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DigitalDrom"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                "DigitalDrom",
              style: TextStyle(
                fontSize: 40,
                color: Colors.orange
              ),
              textAlign: TextAlign.center,
            ),
            Text(
                "Le premier site e-commerce financer par Orange Academie",
              style: TextStyle(
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
            ElevatedButton.icon(
              onPressed: () => {
                Navigator.push(context, PageRouteBuilder(
                  pageBuilder: (_, __, ___) => ProductsPage()
                ))
              },
                label: Text("Voir tous nos produits"),
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.orange)
                ),
              icon: Icon(Icons.production_quantity_limits),
            )
          ],
        ),
      ),
    );
  }
}