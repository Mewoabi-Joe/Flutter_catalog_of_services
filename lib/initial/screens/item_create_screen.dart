import 'dart:io';

import 'package:business/initial/models/item.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../services/item_service.dart';

class ItemCreateScreen extends StatefulWidget {
  const ItemCreateScreen({Key? key}) : super(key: key);

  @override
  State<ItemCreateScreen> createState() => _ItemCreateScreenState();
}

class _ItemCreateScreenState extends State<ItemCreateScreen> {
  ItemService itemService = ItemService();
  double starCount = 3.5;
  bool itemsLoaded = false;
  Map sentMap = {};
  bool saving = false;

  File? image;
  String? imagePath;
  String? itemName;
  String? itemDescription;
  double? itemPrice;

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    if (!itemsLoaded) {
      super.didChangeDependencies();
      var theMap = ModalRoute
          .of(context)!
          .settings
          .arguments;
      sentMap = theMap == null ? {} : theMap as Map;
      Item sentItem = sentMap['item'];
      setState(() {
        itemName = sentItem.itemName;
        itemDescription = sentItem.itemDescription;
        itemPrice = sentItem.itemPrice;
        starCount = sentMap['isCreateMove']?3.5:sentItem.itemRating!;

        itemsLoaded = true;
      });
      // print('passedCatalog: $passedCatalog');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Add item'),
        ),
        body: Column(children: [
          Expanded(
              flex: 2,
              child: InkWell(
                onTap: () => openImagePicker(),
                child: Container(
                  child: Center(
                      child: sentMap['isCreateMove'] ? (image == null
                          ? Icon(Icons.add_a_photo)
                          : Image.file(
                        image!,
                        fit: BoxFit.cover,
                      )
                      ) : (
                          image == null ? Image.network(
                              sentMap['item'].itemImage) : Image.file(
                            image!,
                            fit: BoxFit.cover,
                          )
                      )),
                  color: Colors.grey[300],
                ),
              )),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Form(
                  child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    TextFormField(
                      initialValue: itemName,
                        decoration: InputDecoration(
                          labelText: 'Item name',
                        ),
                        onChanged: (value) => setState(() {
                              itemName = value;
                            })),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      initialValue: itemDescription,
                      decoration: InputDecoration(
                        labelText: 'Item description',
                      ),
                      onChanged: (value) {
                        setState(() {
                          itemDescription = (value);
                        });
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      initialValue: sentMap['isCreateMove']?null:itemPrice!.toInt().toString(),
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: 'Item price',
                        suffixText: 'FCFA',
                      ),
                      onChanged: (value) {
                        setState(() {
                          itemPrice = double.parse(value);
                        });
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text('Item rating'),
                    Row(
                      children: [
                        IconButton(onPressed: (){
                          if(starCount!=0.0) setState(() {
                            starCount -= 0.5;
                          });
                        }, icon: Icon(Icons.remove)
                        ),
                        for(int i = 1; i<=5; i++)
                          i<=starCount?(
                          Icon(Icons.star,
                          color: Colors.blue)
                          ):(i-starCount == 0.5?(
                          Icon(Icons.star_half,
                          color: Colors.blue)
                          ):(
                          Icon(Icons.star_outline,
                          color: Colors.blue)
                          )
                          ),
                        IconButton(onPressed: (){
                          if(starCount!=5.0) setState(() {
                            starCount += 0.5;
                          });
                        }, icon: Icon(Icons.add)
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    FractionallySizedBox(
                      widthFactor: 1,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(vertical: 20)),
                        onPressed: () async {
                          setState(() {
                            saving = true;
                          });
                          Item item = Item(
                              catalogId: sentMap['catalogId'],
                              itemDescription: itemDescription,
                              itemId: sentMap['isCreateMove']?null:sentMap['item'].itemId,
                              itemName: itemName,
                              itemPrice: itemPrice,
                              itemImage: imagePath,
                          itemRating: starCount);
                          Item returnedItem =
                              await itemService.createOrUpdateItem(item);
                          setState(() {
                            saving = false;
                          });
                          // print('returnedItem: $returnedItem');
                          Navigator.pop(context, {'returnedItem': returnedItem, 'isCreateMove': sentMap['isCreateMove']});
                        },
                        child: saving ? SizedBox(
                          width: 20,
                          height: 20,
                          child: CircularProgressIndicator(
                            color: Colors.white,
                          ),
                        ) : sentMap['isCreateMove'] ? Text("Save") : Text(
                            'Update'),),
                    ),
                  ],
                ),
              )),
            ),
          ),
        ]));
  }

  void openImagePicker() async {
    try {
      var image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return;

      final imageTemporary = File(image.path);
      setState(() {
        imagePath = image.path;
        this.image = imageTemporary;
        // print(imagePath);
      });
    } catch (e) {
      print('Flailed to pick image: $e');
    }
    // StoreProvider.of<AppState>(context).dispatch(UpdateKm(km));
  }
}
