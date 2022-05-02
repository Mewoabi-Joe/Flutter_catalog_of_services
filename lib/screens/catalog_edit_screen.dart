import 'package:flutter/material.dart';

// ignore_for_file: prefer_const_constructors
class CatalogEditScreen extends StatefulWidget {
  const CatalogEditScreen({Key? key}) : super(key: key);

  @override
  State<CatalogEditScreen> createState() => _CatalogEditScreenState();
}

class _CatalogEditScreenState extends State<CatalogEditScreen> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog Manager"),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.grey[300],
              alignment: Alignment.center,
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'Create a catalog',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                  ),
                  Text('Add Items of similar types in thesame catalog'),
                  InkWell(
                    onTap: () => Navigator.pushNamed(context, '/item_edit'),
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
                          Text('Add new catalog',
                              style: TextStyle(fontWeight: FontWeight.w600))
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.all(Radius.circular(10)),
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
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.all(Radius.circular(10)),
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
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
