import 'package:business/initial/services/business_service.dart';
import 'package:flutter/material.dart';

import '../models/catalog.dart';
import '../services/catalog_service.dart';

// ignore_for_file: prefer_const_constructors
class CatalogEditScreen extends StatefulWidget {
  const CatalogEditScreen({Key? key}) : super(key: key);

  @override
  State<CatalogEditScreen> createState() => _CatalogEditScreenState();
}

class _CatalogEditScreenState extends State<CatalogEditScreen> {
  BusinessService businessService = BusinessService();
  bool catalogsLoaded = false;
  List<Catalog> businessCatalogs = [];
  final CatalogService catalogService = CatalogService();
  Map passedBusiness = {};

  Future<void> getBusinessCatalogs(String businessId) async {
    List<Catalog> gottenCatalogs =
        await catalogService.fetchBusinessesCatalogs(businessId);
    // print('businessCatalogs: $gottenCatalogs');
    setState(() {
      businessCatalogs = gottenCatalogs;
      catalogsLoaded = true;
    });
  }

  @override
  void didChangeDependencies() async {
    // TODO: implement didChangeDependencies
    if (!catalogsLoaded) {
      super.didChangeDependencies();
      var theMap = ModalRoute.of(context)!.settings.arguments;
      passedBusiness = theMap == null ? {} : theMap as Map;
      // print('passedBusiness: $passedBusiness');
      await getBusinessCatalogs(passedBusiness['businessId']);
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Collection Manager"),
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
                    image: NetworkImage(passedBusiness['businessPhoto']),
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
                        passedBusiness['businessName'],
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(passedBusiness['businessDescription'],
                          style: TextStyle(color: Colors.white))
                    ],
                  ),
                )
              ],
            ),
          ),
          catalogsLoaded ? Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    'All collections in ${passedBusiness['businessName']} business',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                ),
                Text('Add Items of similar types to a Collection'),
                InkWell(
                  onTap: () async {
                    dynamic returnedData = await Navigator.pushNamed(
                        context, '/catalog_create',
                        arguments: {
                          'isCreateMove': true,
                          'businessId': passedBusiness['businessId'],
                          'catalog': Catalog()
                        });
                    Map theReturnedData = returnedData as Map;
                    // print('theReturnedData: $theReturnedData');
                    if (theReturnedData['isCreateMove']) {
                      setState(() {
                        businessCatalogs.add(
                            theReturnedData['returnedCatalog']);
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
                        Text('create new collection',
                            style: TextStyle(fontWeight: FontWeight.w600))
                      ],
                    ),
                  ),
                ),
                if (businessCatalogs.isEmpty)
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
                if (businessCatalogs.isEmpty)
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
                if (businessCatalogs.isNotEmpty)
                  for (var catalog in businessCatalogs)
                    Container(
                      margin: EdgeInsets.only(bottom: 3),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[200],
                      ),
                      child: InkWell(
                        onTap: () => Navigator.pushNamed(
                            context, '/item_edit',
                            arguments: {
                              'catalogId': catalog.catalogId,
                              'catalogName': catalog.catalogName,
                              'firstImageUrl': catalog.firstImageUrl,
                              'catalogDescription': catalog.catalogDescription
                            }),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SizedBox(
                                width: 20,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image:
                                        NetworkImage(catalog.firstImageUrl!),
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
                              Expanded(
                                flex: 2,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 30),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('${catalog.catalogName}',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w600)),
                                      Text('${catalog.catalogDescription}')
                                    ],
                                  ),
                                ),
                              ),
                              PopupMenuButton<String>(
                                onSelected: (value) => handleSelectedOption(
                                    value, context, catalog),
                                itemBuilder: (context) =>
                                    <PopupMenuItem<String>>[
                                  const PopupMenuItem<String>(
                                    value: 'delete',
                                    child: Text(
                                      'Delete collection',
                                    ),
                                  ),
                                  const PopupMenuItem<String>(
                                    value: 'details',
                                    child: Text(
                                      'Update collection info',
                                    ),
                                  ),
                                  const PopupMenuItem<String>(
                                    value: 'addImage',
                                    child: Text(
                                      'Show image in Preview',
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
              ],
            ),
          ): Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Center(
              child: CircularProgressIndicator(),
            ),
          ),
        ],
      ),
    );
  }

  handleSelectedOption(
      String value, BuildContext context, Catalog catalog) async {
    if (value == 'delete') {
      displayDialog(context, catalog);
    } else if (value == 'details') {
      dynamic returnedData =
          await Navigator.pushNamed(context, '/catalog_create', arguments: {
        'isCreateMove': false,
        'businessId': passedBusiness['businessId'],
        'catalog': catalog,
      });

      Map theReturnedData = returnedData as Map;
      // print('theReturnedData: $theReturnedData');
      if (!theReturnedData['isCreateMove']) {
        setState(() {
          catalogsLoaded = false;
          businessCatalogs = [];
        });
        await getBusinessCatalogs(passedBusiness['businessId']);
      }
    } else {
      dynamic result = await businessService.saveImageToBusiness(
          passedBusiness['userNumber'],
          passedBusiness['businessId'],
          catalog.firstImageUrl!);
    }
  }

  void displayDialog(BuildContext context, Catalog catalog) {
    showDialog<String>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: const Text('Do you really want to delete this catalog?'),
        content: const Text(
            'If Items are in this catalog they would be deleted as well'),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.pop(context, 'Cancel'),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () async {
              Catalog returnedCatalog =
                  await catalogService.deleteCatalogFromBusiness(catalog);
              List<Catalog> reducedCatalogs = businessCatalogs
                  .where((Catalog catalog) =>
                      catalog.catalogId != returnedCatalog.catalogId)
                  .toList();
              await businessService.deleteImageFromBusiness(
                  passedBusiness['userNumber'],
                  passedBusiness['businessId'],
                  catalog.firstImageUrl!);
              setState(() {
                businessCatalogs = reducedCatalogs;
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
