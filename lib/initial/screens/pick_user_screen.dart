// ignore_for_file: prefer_const_constructors

import 'dart:io';

import 'package:business/initial/models/user.dart';
import 'package:business/initial/redux/actions.dart';
import 'package:business/initial/services/user_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:image_picker/image_picker.dart';

import '../redux/store.dart';

class PickUserScreen extends StatefulWidget {
  @override
  State<PickUserScreen> createState() => _PickUserScreenState();
}

class _PickUserScreenState extends State<PickUserScreen> {
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
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0.0,
        title: Text('Polytech Social - Catalog of services'),
        centerTitle: true,
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
                        FractionallySizedBox(
                        widthFactor: 1,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.symmetric(vertical: 20)
                          ),
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
                      ),
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
                                  assetImageURL = user.userPhotoUrl;
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
                          SizedBox(
                            height: 20,
                          ),
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
                          SizedBox(
                            height: 15,
                          ),
                          IconButton(
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
                            icon: Icon(Icons.add_a_photo, size: 40,),
                          ),
                        ],
                      )
                    ),
                          ClipRRect( // ClipRRect is used if you want a
                            //rectangular image
                            //Add the border radius property in order to give
                            // the image rounded corners.
                            borderRadius: BorderRadius.circular(15),
                            child: (pickExistingUser && assetImageURL != null) ?
                                Container( //Wrapping with Container in order to
                                  //give background color on extra space left out
                                  //since I am using contained fit
                                  //In case I use cover fit no container is needed
                                  //since the image covers the size specified.
                                  color: Colors.black,
                                  child: Image.network(
                                      assetImageURL!,
                                    fit: BoxFit.contain,
                                    width: 160,
                                    height: 160,
                                  ),
                                ):(
                                image != null
                                    ? Image.file(
                                  image!,
                                  width: 160,
                                  height: 160,
                                  fit: BoxFit.cover,
                                )
                                    : null
                            )

                          ),

                        ],
                      ),
                    ),
                  );
          }),
    );
  }
}
