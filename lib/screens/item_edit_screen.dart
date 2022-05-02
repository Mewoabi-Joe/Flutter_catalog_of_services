import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ItemEditScreen extends StatefulWidget {
  const ItemEditScreen({Key? key}) : super(key: key);

  @override
  State<ItemEditScreen> createState() => _ItemEditScreenState();
}

class _ItemEditScreenState extends State<ItemEditScreen> {
  File? image;
  String? imagePath;
  String? itemName;
  String? itemDescription;
  double? itemPrice;
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
                  child:Center(child:  image == null ?
                  Icon(Icons.add_a_photo)
                  : Image.file(
                    image!,

                    fit: BoxFit.cover,
                  )
                  ),
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
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                    TextFormField(
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
                    FractionallySizedBox(
                      widthFactor: 1,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(vertical: 20)),
                        onPressed: (){},

                        child: Text("Save"),
                      ),
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
        print(imagePath);
      });
    } catch (e) {
      print('Flailed to pick image: $e');
    }
    // StoreProvider.of<AppState>(context).dispatch(UpdateKm(km));
  }
}
