import 'package:flutter/material.dart';

class CatalogPage extends StatefulWidget {
  const CatalogPage({Key? key}) : super(key: key);

  @override
  _CatalogPageState createState() => _CatalogPageState();
}

class _CatalogPageState extends State<CatalogPage> {
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
