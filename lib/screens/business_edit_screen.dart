import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:image_picker/image_picker.dart';

import '../redux/store.dart';

class BusinessEditScreen extends StatefulWidget {
  const BusinessEditScreen({Key? key}) : super(key: key);

  @override
  State<BusinessEditScreen> createState() => _BusinessEditScreenState();
}

class _BusinessEditScreenState extends State<BusinessEditScreen> {
  File? image;
  String? imagePath;

  String modalValue = '';

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppState>(
        converter: (store) => store.state,
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              actions: [
                IconButton(onPressed: openImagePicker, icon: Icon(Icons.edit))
              ],
            ),
            body: Padding(
              padding: const EdgeInsets.all(15),
              child: ListView(
                children: [
                  Column(
                    children: [
                      ClipOval(
                        child: Image.network(
                          state.user!.userPhotoUrl!,
                          width: 80,
                          height: 80,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Divider(
                        height: 60,
                        color: Colors.grey[900],
                      ),
                      Text('Business information'),
                      SizedBox(
                        height: 20,
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.all(0),
                        onTap: () => showModal("Business name"),
                        leading: Icon(Icons.person),
                        title: Text('Business name'),
                        trailing: Icon(Icons.edit),
                      ),
                      Divider(),
                      ListTile(
                        contentPadding: EdgeInsets.all(0),
                        onTap: () => showModal("Business description"),
                        leading: Icon(Icons.store),
                        title: Text('Business description'),
                        trailing: Icon(Icons.edit),
                      ),
                      Divider(),
                      ListTile(
                        contentPadding: EdgeInsets.all(0),
                        onTap: () => showModal("Service categories"),
                        leading: Icon(Icons.category),
                        title: Text('Service categories'),
                        trailing: Icon(Icons.edit),
                      ),
                      Divider(),
                      ListTile(
                        contentPadding: EdgeInsets.all(0),
                        onTap: () => showModal("Business address"),
                        leading: Icon(Icons.location_on),
                        title: Text('Business address'),
                        trailing: Icon(Icons.edit),
                      ),
                      Divider(),
                      ListTile(
                        contentPadding: EdgeInsets.all(0),
                        onTap: () => showModal("Open hours"),
                        leading: Icon(Icons.location_on),
                        title: Text('Open hours'),
                        trailing: Icon(Icons.edit),
                      ),
                      Divider(),
                      InkWell(
                        onTap: () => Navigator.pushNamed(context, '/catalog_edit'),
                        child: Column(
                          children: [
                            ListTile(
                              contentPadding: EdgeInsets.all(0),
                              leading: Icon(Icons.add_business),
                              title: Text('Catalog'),
                              trailing: Icon(Icons.edit),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                for (int i = 0; i < 3; i++)
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Container(
                                      color: Colors.grey[500],
                                      width: 100,
                                      height: 100,
                                    ),
                                  )
                              ],
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        height: 60,
                        color: Colors.grey[900],
                      ),
                      Text('Bio and phone number'),
                      SizedBox(
                        height: 20,
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.all(0),
                        onTap: () => showModal("Business name"),
                        leading: Icon(Icons.person),
                        title: Text('Business name'),
                        trailing: Icon(Icons.edit),
                      ),
                      Divider(),
                      ListTile(
                        contentPadding: EdgeInsets.all(0),
                        onTap: () => showModal("Business description"),
                        leading: Icon(Icons.store),
                        title: Text('Business description'),
                        trailing: Icon(Icons.edit),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        });
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

  void showModal(String attribute) {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Padding(
            padding: const EdgeInsets.all(20.0),
            child: Form(
                child: Column(
              children: [
                TextFormField(
                  onChanged: (value) => setState(() {
                    modalValue = value;
                  }),
                  autofocus: true,
                  decoration: InputDecoration(
                    labelText: attribute,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        onPressed: () => Navigator.pop(context, "cancelled"),
                        child: Text('CANCEL')),
                    TextButton(
                        onPressed: () => Navigator.pop(context, "saved"),
                        child: Text('CANCEL'))
                  ],
                ),
              ],
            )),
          );
        });
  }
}
