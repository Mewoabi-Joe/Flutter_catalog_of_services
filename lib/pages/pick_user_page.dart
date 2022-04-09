// ignore_for_file: prefer_const_constructors

import 'dart:io';

import 'package:catalog_of_services/models/user.dart';
import 'package:catalog_of_services/redux/actions.dart';
import 'package:catalog_of_services/services/user_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:image_picker/image_picker.dart';

import '../redux/store.dart';

class PickUserPage extends StatefulWidget {
  @override
  State<PickUserPage> createState() => _PickUserPageState();
}

class _PickUserPageState extends State<PickUserPage> {
  final UserService userService = UserService();
  String km = '';
  List<User>? users;
  User? selectedUser;
  String? chosenName;
  int? chosenNumber;
  String? chosenPhotoUrl;
  String? chosenBio;
  File? image;
  String? imagePath;
  bool pickExistingUser = true;

  String? assetImageURL;

  void getUsers() async {
    List<User> gottenUsers = await userService.fetchUsers();
    setState(() {
      users = gottenUsers;
    });
  }

  @override
  void initState() {
    super.initState();
    getUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text('Have a tours with a user'),
      ),

      body: StoreConnector<AppState, AppState>(
          converter: (store) => store.state,
          builder: (context, state) {
            return users == null
                ? Center(child: CircularProgressIndicator())
                : Container(
                    padding:
                        EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
                    child: Form(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Column(
                            children: [
                              Row(
                                children: [
                                  Checkbox(
                                    value: pickExistingUser,
                                    onChanged: (value) {
                                      setState(() {
                                        pickExistingUser = !pickExistingUser;
                                      });
                                    },
                                  ),
                                  SizedBox(width: 20,),
                                  Text("Pick an alrealdy existing user")
                                ],
                              ),
                              Row(
                                children: [
                                  Checkbox(
                                    value: !pickExistingUser,
                                    onChanged: (value) {
                                      setState(() {
                                        pickExistingUser = !pickExistingUser;
                                      });
                                    },
                                  ),
                                  Text("Create a new user"),
                                ],
                              ),
                            ],
                          ),
                          if(pickExistingUser)(
                        Column(
                          children: [

                            DropdownButtonFormField(
                              decoration: InputDecoration(
                                filled: true,
                                icon: const Icon(Icons.person),
                                labelText: 'Exiting user',
                              ),
                              items: users!.map((user) {
                                return DropdownMenuItem(
                                  value: user,
                                  child: Text(
                                      '${user.userNumber}  ${user.userName}'),
                                );
                              }).toList(),
                              onChanged: (user){
                                setState(() {
                                  selectedUser = user as User;
                                  this.assetImageURL = user.userPhotoUrl;
                                });

                              }
                            ),
                            SizedBox(height: 20),
                          ],
                        )
                          ),
                         if(!pickExistingUser)(
                      Column(
                        children: [

                          TextFormField(
                              decoration: InputDecoration(
                                filled: true,
                                icon: const Icon(Icons.person),
                                hintText: 'optional name',
                                labelText: 'User name',
                              ),
                              onChanged: (value) => setState(() {
                                chosenName = value;
                              })),
                          TextFormField(
                            decoration: InputDecoration(
                              filled: true,
                              icon: const Icon(Icons.phone),
                              hintText: 'Enter a valid number',
                              labelText: 'Phone number',
                              prefixText: '+237 ',
                            ),
                            keyboardType: TextInputType.phone,
                            onChanged: (value) {
                              setState(() {
                                chosenNumber = int.parse(value);
                              });
                            },
                            maxLength: 9,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              filled: true,
                              icon: const Icon(Icons.insert_emoticon),
                              hintText: 'a short phrase about yourself',
                              labelText: 'Bio',
                            ),
                            onChanged: (value) {
                              setState(() {
                                chosenBio = value;
                              });
                            },
                          ),
                          ElevatedButton(
                            onPressed: () async {
                              try {
                                var image = await ImagePicker()
                                    .pickImage(source: ImageSource.gallery);
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
                            },
                            child: Text("Pick image"),
                          ),
                        ],
                      )
                    ),
                          ClipOval(
                            child: (pickExistingUser && this.assetImageURL != null) ?
                                Image.network(
                                    this.assetImageURL!,
                                  width: 160,
                                  height: 160,
                                  fit: BoxFit.cover):(
                                image != null
                                    ? Image.file(
                                  image!,
                                  width: 160,
                                  height: 160,
                                  fit: BoxFit.cover,
                                )
                                    : FlutterLogo(
                                  size: 160,
                                )
                            )

                          ),
                          ElevatedButton(
                            onPressed: () async {
                              // print(chosenNumber);
                              // print(chosenName);
                              // print(chosenBio);
                              // print(imagePath);
                              if(pickExistingUser){
                                StoreProvider.of<AppState>(context).dispatch(UpdateUser(selectedUser));
                              }else{
                                User returnedUser = await userService.createUser(User(userName: chosenName, userBio: chosenBio, userNumber: chosenNumber, userPhotoUrl: imagePath));
                                StoreProvider.of<AppState>(context).dispatch(UpdateUser(returnedUser));

                              }
                              Navigator.pushNamed(context,'/contact', arguments:  {
                                'userNumber':pickExistingUser?selectedUser!.userNumber.toString():chosenNumber.toString(),
                              }, );
                            },
                            child: Text("Have a tour"),
                          ),
                        ],
                      ),
                    ),
                  );
          }),
    );
  }
}
