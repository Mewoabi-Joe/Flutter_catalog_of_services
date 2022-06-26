import 'package:flutter/material.dart';

class CategoryPickScreen extends StatefulWidget {
  const CategoryPickScreen({Key? key}) : super(key: key);

  @override
  State<CategoryPickScreen> createState() => _CategoryPickScreenState();
}

class _CategoryPickScreenState extends State<CategoryPickScreen> {
  String searchTerm = '';
  List<String> choosenCategories = [];
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
    'electronics',
    'sales',
    'shoes',
    'fashion',
    'delivery',
    'groceries'
  ];

  Map? theCategories;
  bool initialised = false;
  List<String> filteredCategories = [];
  List<dynamic>? receivedCategories;

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    if (!initialised) {
      super.didChangeDependencies();
      var theMap = ModalRoute.of(context)!.settings.arguments;
      theCategories = theMap == null ? {} : theMap as Map;
      receivedCategories = theCategories!.isNotEmpty ? theCategories!['sentCategories'] : [];
      choosenCategories = [...?receivedCategories];
    }
    setState(() {
      initialised = true;
    });
  }

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
                icon: Icon(Icons.clear)),
          if(choosenCategories.isNotEmpty)
            TextButton(
                onPressed: ( ){
                  Navigator.pop(context, choosenCategories);
                  print(choosenCategories);
                },
                child: Text('SAVE'))
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
            Row(
              children: [
                for(int i=0; i<choosenCategories.length; i++)
                  generateInputChip(choosenCategories[i])
              ],
            ),
            Text('Suggested'),
            Expanded(
                child: searchTerm.isEmpty
                    ? ListView.separated(
                        padding: const EdgeInsets.all(8),
                        itemCount: categories.length,
                        itemBuilder: (BuildContext context, int index) {
                          return ListTile(
                            onTap: (){
                              if(choosenCategories.length == 3){
                                showInSnackBar("You can choose atmost 3 categories");
                              }else{
                                setState(() {
                                  choosenCategories.add(categories[index]);
                                });
                              }
                            },
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
                            onTap: (){
                              if(choosenCategories.length == 3){
                                showInSnackBar("You can choose atmost 3 categories");
                              }else{
                                setState(() {
                                  choosenCategories.add(filteredCategories[index]);
                                });
                              }
                            },
                            //     context, filteredCategories[index]),
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

  Widget generateInputChip(String label){
    return(
        InputChip(
            onPressed: () {},
            onDeleted: () {
              setState(() {
                  choosenCategories = choosenCategories.where((category) => category != label).toList();
              });
            },
            deleteIconColor: Colors.black54,
            label: Text(label),
          )
    );
  }

  void showInSnackBar(String text) {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(text),
        behavior: SnackBarBehavior.floating,
        margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.height/2),));
  }
}
