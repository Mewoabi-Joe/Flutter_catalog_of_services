import 'package:flutter/material.dart';

import '../models/item.dart';
import '../services/item_service.dart';

// ignore_for_file: prefer_const_constructors
class ItemEditScreen extends StatefulWidget {
  const ItemEditScreen({Key? key}) : super(key: key);

  @override
  State<ItemEditScreen> createState() => _ItemEditScreenState();
}

class _ItemEditScreenState extends State<ItemEditScreen> {
  bool itemsLoaded = false;
  List<Item> catalogItems = [];
  final ItemService itemService = ItemService();
  Map passedCatalog = {};

  Future<void> getCatalogItems(String catalogId) async {
    List<Item> gottenItems = await itemService.fetchCatalogsItems(catalogId);
    // print('catalogItems: $gottenItems');
    setState(() {
      catalogItems = gottenItems;
      itemsLoaded = true;
    });
  }

  @override
  void didChangeDependencies() async {
    // TODO: implement didChangeDependencies
    if (!itemsLoaded) {
      super.didChangeDependencies();
      var theMap = ModalRoute.of(context)!.settings.arguments;
      passedCatalog = theMap == null ? {} : theMap as Map;
      // print('passedCatalog: $passedCatalog');
      await getCatalogItems(passedCatalog['catalogId']);
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Item Manager"),
      ),
      body: ListView(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width * 0.6,
            child: Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Container(
                    decoration: BoxDecoration(
                  color: Colors.grey[300],
                  image: DecorationImage(
                    image: NetworkImage(passedCatalog['firstImageUrl']),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.4), BlendMode.darken),
                  ),
                )),
                Padding(
                  padding: const EdgeInsets.only(top: 12.0),
                  child: Column(
                    children: [
                      Text(
                        passedCatalog['catalogName'],
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(passedCatalog['catalogDescription'],
                          style: TextStyle(color: Colors.white))
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    'Items in the ${passedCatalog['catalogName']} collection',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                ),
                Text('Add Items of similar type to this collection'),
                InkWell(
                  onTap: () async {
                    dynamic returnedData = await Navigator.pushNamed(
                        context, '/item_create',
                        arguments: {
                          'isCreateMove': true,
                          'catalogId': passedCatalog['catalogId'],
                          'item': Item()
                        });
                    Map theReturnedData = returnedData as Map;
                    // print('theReturnedData: $theReturnedData');
                    if (theReturnedData['isCreateMove']) {
                      setState(() {
                        catalogItems.add(
                            theReturnedData['returnedItem']);
                      });
                    }
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 20),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey[300]!,
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Icon(Icons.add),
                          width: 70,
                          height: 70,
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Text('Add new item',
                            style: TextStyle(fontWeight: FontWeight.w600))
                      ],
                    ),
                  ),
                ),
                if (catalogItems.isEmpty)
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius:
                                BorderRadius.all(Radius.circular(10)),
                          ),
                          width: 70,
                          height: 70,
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey[300],
                              ),
                              width: screenSize.width * 0.35,
                              height: 17,
                            ),
                            SizedBox(
                              height: 13,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey[300],
                              ),
                              width: screenSize.width * 0.17,
                              height: 14,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                if (catalogItems.isEmpty)
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius:
                                BorderRadius.all(Radius.circular(10)),
                          ),
                          width: 70,
                          height: 70,
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey[300],
                              ),
                              width: screenSize.width * 0.35,
                              height: 17,
                            ),
                            SizedBox(
                              height: 13,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey[300],
                              ),
                              width: screenSize.width * 0.17,
                              height: 14,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                if (catalogItems.isNotEmpty)
                  for (var item in catalogItems)
                    Container(
                      margin: EdgeInsets.only(bottom: 3),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[200],
                      ),
                      child: InkWell(
                        // onTap: () => Navigator.pushNamed(context, '/item_edit',
                        //     arguments: {'item': item}),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 20,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage(item.itemImage!),
                                    fit: BoxFit.cover,
                                  ),
                                  border: Border.all(
                                    color: Colors.grey[300]!,
                                  ),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                ),
                                width: 70,
                                height: 70,
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Expanded(
                                flex: 2,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [

                                    Text('${item.itemName}',
                                        style: TextStyle(fontSize: 20)),
                                    Text('${item.itemPrice} FCFA',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600)),
                                    Row(
                                      children: [
                                        for (int i = 1; i <= 5; i++)
                                          i <= item.itemRating!
                                              ? (Icon(
                                                  Icons.star,
                                                  size: 15,
                                                ))
                                              : (i - item.itemRating! == 0.5
                                                  ? (Icon(
                                                      Icons.star_half,
                                                      size: 15,
                                                    ))
                                                  : (Icon(
                                                      Icons.star_outline,
                                                      size: 15,
                                                    ))),
                                      ],
                                    ),
                                    Text('${item.itemDescription}')
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  IconButton(onPressed: () async{
                                    dynamic returnedData =
                                        await Navigator.pushNamed(context, '/item_create', arguments: {
                                      'isCreateMove': false,
                                      'catalogId': passedCatalog['catalogId'],
                                      'item': item,
                                    });

                                    Map theReturnedData = returnedData as Map;
                                    // print('theReturnedData: $theReturnedData');
                                    if (!theReturnedData['isCreateMove']) {
                                      setState(() {
                                        itemsLoaded = false;
                                        catalogItems = [];
                                      });
                                      await getCatalogItems(passedCatalog['catalogId']);
                                    }
                                  }, icon: Icon(
                                    Icons.edit,
                                    color: Colors.blue,
                                  )),
                                  IconButton(onPressed: (){
                                    displayDialog(context, item);
                                  }, icon: Icon(
                                    Icons.delete_forever,
                                    color: Colors.red,
                                  ))
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void displayDialog(BuildContext context, Item item){
    showDialog<String>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: const Text('Do you really want to delete this item?'),
        content: const Text(
            ''),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.pop(context, 'Cancel'),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () async {
              Item returnedItem = await itemService.deleteItemFromCatalog(item);
              List<Item> reducedItems = catalogItems.where((Item item) => item.itemId != returnedItem.itemId).toList();
              setState(() {
                catalogItems = reducedItems;
              });
              Navigator.pop(context, 'OK');
            },
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }
}
