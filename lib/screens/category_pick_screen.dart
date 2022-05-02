import 'package:flutter/material.dart';

class CategoryPickScreen extends StatefulWidget {
  const CategoryPickScreen({Key? key}) : super(key: key);

  @override
  State<CategoryPickScreen> createState() => _CategoryPickScreenState();
}

class _CategoryPickScreenState extends State<CategoryPickScreen> {
  String searchTerm = '';
  final _controller = TextEditingController();
  List<String> categories = [
    'books',
    'dresses',
    'finance',
    'sports',
    'games',
    'productivity',
    'cosmetics',
    'houses',
    'groceries'
  ];

  List<String> filteredCategories = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          if (searchTerm.isNotEmpty)
            IconButton(
                onPressed: () => setState(() {
                      searchTerm = '';
                      _controller.clear();
                }),
                icon: Icon(Icons.clear))
        ],
        backgroundColor: Colors.blue[100],
        title: TextFormField(
            controller: _controller,
            decoration: InputDecoration(
                border: InputBorder.none, // labelText: 'Description',
                hintText: "Search for categories"),
            onChanged: (value) {
              setState(() {
                searchTerm = value;
                filteredCategories = categories
                    .where((category) => category.contains(value))
                    .toList();
              });
            }),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Text('Suggested'),
            Expanded(
                child: searchTerm.isEmpty
                    ? ListView.separated(
                        padding: const EdgeInsets.all(8),
                        itemCount: categories.length,
                        itemBuilder: (BuildContext context, int index) {
                          return ListTile(
                            onTap: () =>
                                Navigator.pop(context, categories[index]),
                            title: Text(categories[index]),
                          );
                        },
                        separatorBuilder: (BuildContext context, int index) =>
                            const Divider(),
                      )
                    : ListView.separated(
                        padding: const EdgeInsets.all(8),
                        itemCount: filteredCategories.length,
                        itemBuilder: (BuildContext context, int index) {
                          return ListTile(
                            onTap: () => Navigator.pop(
                                context, filteredCategories[index]),
                            title: Text(filteredCategories[index]),
                          );
                        },
                        separatorBuilder: (BuildContext context, int index) =>
                            const Divider(),
                      )),
          ],
        ),
      ),
    );
  }
}
