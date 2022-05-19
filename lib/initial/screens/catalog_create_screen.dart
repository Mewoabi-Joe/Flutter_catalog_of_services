import 'dart:io';

import 'package:business/initial/services/catalog_service.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../models/catalog.dart';

class CatalogCreateScreeen extends StatefulWidget {
  const CatalogCreateScreeen({Key? key}) : super(key: key);

  @override
  State<CatalogCreateScreeen> createState() => _CatalogCreateScreeenState();
}

class _CatalogCreateScreeenState extends State<CatalogCreateScreeen> {
  CatalogService catalogService = CatalogService();
  File? image;
  String? imagePath;
  String? catalogName;
  String? catalogDescription;
  double? catalogPrice;
  bool catalogsLoaded = false;
  Map sentMap = {};
  bool saving = false;

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    if (!catalogsLoaded) {
      super.didChangeDependencies();
      var theMap = ModalRoute
          .of(context)!
          .settings
          .arguments;
      sentMap = theMap == null ? {} : theMap as Map;
      Catalog sentCatalog = sentMap['catalog'];
      setState(() {
        catalogName = sentCatalog.catalogName;
        catalogDescription = sentCatalog.catalogDescription;
        catalogsLoaded = true;
      });
      // print('sentMap: $sentMap');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Create Collection'),
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
                              sentMap['catalog'].firstImageUrl) : Image.file(
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
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        TextFormField(
                            initialValue: catalogName,
                            decoration: InputDecoration(
                              labelText: 'Collection name',
                            ),
                            onChanged: (value) =>
                                setState(() {
                                  catalogName = value;
                                })),
                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          initialValue: catalogDescription,
                          decoration: InputDecoration(
                            labelText: 'Collection description',
                          ),
                          onChanged: (value) {
                            setState(() {
                              catalogDescription = (value);
                            });
                          },
                        ),
                        SizedBox(
                          height: 20,
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
                              Catalog catalog = Catalog(
                                  businessId: sentMap['businessId'],
                                  catalogDescription: catalogDescription,
                                  catalogName: catalogName,
                                  catalogId: sentMap['isCreateMove']?null:sentMap['catalog'].catalogId,
                                  firstImageUrl: imagePath);
                              Catalog returnedCatalog =
                              await catalogService.createOrUpdateCatalog(catalog);
                              // print('returnedCatalog: $returnedCatalog');
                              Navigator.pop(context, {'returnedCatalog': returnedCatalog, 'isCreateMove': sentMap['isCreateMove']});
                            },
                            child: saving ? SizedBox(
                              width: 20,
                              height: 20,
                              child: CircularProgressIndicator(
                                color: Colors.white,
                              ),
                            ) : sentMap['isCreateMove'] ? Text("Save") : Text(
                                'Update'),
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
        // print(imagePath);
      });
    } catch (e) {
      print('Flailed to pick image: $e');
    }
    // StoreProvider.of<AppState>(context).dispatch(UpdateKm(km));
  }
}
