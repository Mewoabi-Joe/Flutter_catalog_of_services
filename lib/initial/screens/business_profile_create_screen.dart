import 'package:flutter/material.dart';

class BusinessProfileCreateScreen extends StatefulWidget {
  const BusinessProfileCreateScreen({Key? key}) : super(key: key);

  @override
  State<BusinessProfileCreateScreen> createState() =>
      _BusinessProfileCreateScreenState();
}

class _BusinessProfileCreateScreenState
    extends State<BusinessProfileCreateScreen> {
  String businessDescription = "";
  final _formKey = GlobalKey<FormState>();
  String businessAddress = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              // color: Colors.red,
              child: Column(
                children: [
                  Text(
                    'Create your business profile',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 30),
                  Text('Help customers learn about your business'),
                  SizedBox(height: 50),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: <Widget>[
                        ListTile(
                          contentPadding: EdgeInsets.all(0),
                          onTap: () async {
                            final category = await Navigator.pushNamed(
                                context, '/category_pick');
                            showInSnackBar(category as String);
                          },
                          leading: Icon(Icons.category),
                          title: Text('choosencategory'),
                          trailing: Icon(Icons.edit),
                        ),
                        SizedBox(height: 20),
                        TextFormField(
                            decoration: InputDecoration(
                                icon: const Icon(Icons.store),
                                labelText: 'Description',
                                hintText: "Describe your business services"),
                            onChanged: (value) => setState(() {
                                  businessDescription = value;
                                })),
                        SizedBox(height: 20),
                        TextFormField(
                            decoration: InputDecoration(
                                icon: const Icon(Icons.location_on),
                                labelText: 'Business address',
                                hintText: "Street, Town",
                                suffix: Text('Cameroon')),
                            onChanged: (value) => setState(() {
                                  businessAddress = value;
                                })),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                // if(_formKey.currentState.validate()){
                print(businessAddress);
                print(businessDescription);
                // print(businessDescription);
              },
              child: Text("NEXT"),
            ),
          ],
        ),
      )),
    );
  }

  void showInSnackBar(String text) {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(text)));
  }
}
