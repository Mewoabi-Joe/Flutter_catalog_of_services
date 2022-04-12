import 'package:flutter/material.dart';

class CatalogScreen extends StatefulWidget {
  const CatalogScreen({Key? key}) : super(key: key);

  @override
  _CatalogScreenState createState() => _CatalogScreenState();
}

class _CatalogScreenState extends State<CatalogScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Catalog'),
        centerTitle: true,
        // leading: Icon(Icons.menu),
        actions: const [
          CircleAvatar(
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/image1.jpg'),
            )
          )
        ],
      ),
      body: Column(
        children: [
           Row(

           )
        ],
      ),
    );
  }
}
