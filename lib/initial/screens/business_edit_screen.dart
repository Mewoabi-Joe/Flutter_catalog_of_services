import 'dart:io';

import 'package:business/initial/services/user_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:image_picker/image_picker.dart';

import '../models/business.dart';
import '../models/user.dart';
import '../redux/actions.dart';
import '../redux/store.dart';
import '../services/business_service.dart';
import '../shared/connection.dart';

class BusinessEditScreen extends StatefulWidget {
  const BusinessEditScreen({Key? key}) : super(key: key);

  @override
  State<BusinessEditScreen> createState() => _BusinessEditScreenState();
}

class _BusinessEditScreenState extends State<BusinessEditScreen> {
  UserService userService = UserService();
  BusinessService businessService = BusinessService();
  bool saving = false;
  File? image;
  String? imagePath;
  String? myBio;
  Business? returnedBusiness;
  String? businessName;
  String? businessDescription;
  List<String>? serviceCategories;
  String? businessAddress;
  String modalValue = '';
  bool businessesLoaded = false;
  Map authContact = {};
  List<Business> usersBusinesses = [];
  bool readyToGoBack = true;

  void getUsersBusinesses(int usersContact) async {
    List<Business> gottenBusinesses =
        await businessService.fetchAllBusinessesOfAUser(usersContact);
    setState(() {
      usersBusinesses = gottenBusinesses;
      businessesLoaded = true;
    });
    // print("gottenBusinesses: $usersBusinesses");
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    if (!businessesLoaded) {
      super.didChangeDependencies();
      var theMap = ModalRoute.of(context)!.settings.arguments;
      authContact = theMap == null ? {} : theMap as Map;
      getUsersBusinesses(authContact['userNumber']);
    }
  }

  String getImageUrl(String image) {
    // if(image.contains('/item/')){
      int cIndex = image.indexOf('c');
      String subStringFromC = image.substring(cIndex);
      String newImageURL = '$hostAndPort/$subStringFromC';
      // print('imageFunction: $newImageURL');
      return newImageURL;
    // }else{
    //   return image;
    // }

  }

  Future<void> saveChanges(AppState state) async {
    setState(() {
      readyToGoBack = true;
      saving = true;
    });
    if (myBio != null) {
      User updatedUser =
          await userService.updateUserBio(state.user!.userNumber!, myBio!);
      StoreProvider.of<AppState>(context).dispatch(UpdateUser(updatedUser));
    }
    if (imagePath != null) {
      User updatedUser = await userService.updateUserPhoto(
          state.user!.userNumber!, imagePath!);
      StoreProvider.of<AppState>(context).dispatch(UpdateUser(updatedUser));
    }

    List<dynamic> businessValues = [
      businessName,
      businessDescription,
      serviceCategories,
      businessAddress
    ];

    if (businessValues.any((element) => element != null)) {
      returnedBusiness = await businessService.createOrUpdateBusiness(
          state.user!.userNumber!,
          usersBusinesses.isEmpty ? null : usersBusinesses[0].businessId,
          businessName ?? usersBusinesses[0].businessName ?? "",
          businessDescription ??
              (usersBusinesses.isNotEmpty
                  ? (usersBusinesses[0].businessDescription ?? "")
                  : ("")),
          businessAddress ??
              (usersBusinesses.isNotEmpty
                  ? (usersBusinesses[0].businessLocation ?? "")
                  : ("")),
          usersBusinesses.isNotEmpty
              ? (usersBusinesses[0].threeImageUrls ?? [])
              : ([]),
          serviceCategories ??
              (usersBusinesses.isNotEmpty
                  ? (usersBusinesses[0].itemCategories ?? [])
                  : ([])));

      setState(() {
        readyToGoBack = false;
      });
      if (returnedBusiness!.error != null) {
        for (var v in returnedBusiness!.error!.values) {
          showInSnackBar(v);
        }
      } else {
        setState(() {
          usersBusinesses.add(returnedBusiness!);
        });
      }
    }
    setState(() {
      saving = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    // print('formattedImage0 = ' + getImageUrl(usersBusinesses[0].threeImageUrls![0]));
    return StoreConnector<AppState, AppState>(
        converter: (store) => store.state,
        builder: (context, state) {
          return Scaffold(
              appBar: AppBar(
                leading: IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () async {
                    await saveChanges(state);
                    if (returnedBusiness != null &&
                        returnedBusiness!.error != null) {
                      // for (var v in returnedBusiness!.error!.values) {
                      //   showInSnackBar(v);
                      // }
                      showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: const Text('Do you really want to go back?'),
                          content: const Text(
                              'All information about your business has to be correct else it will not be saved'),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () => Navigator.pop(context, 'Cancel'),
                              child: const Text('Cancel'),
                            ),
                            TextButton(
                              onPressed: () {
                                setState(() {
                                  readyToGoBack = true;
                                });
                                Navigator.pop(context, 'OK');
                                Navigator.pop(context);
                              },
                              child: const Text('OK'),
                            ),
                          ],
                        ),
                      );
                    } else {
                      Navigator.pop(context);
                    }
                  },
                ),
                title: saving
                    ? Row(
                        children: [
                          SizedBox(width: 20),
                          Text("Saving Changes"),
                          SizedBox(width: 20),
                          CircularProgressIndicator(
                            color: Colors.white,
                          )
                        ],
                      )
                    : null,
                actions: [
                  IconButton(
                      onPressed: () => openImagePicker(state),
                      icon: Icon(Icons.edit))
                ],
              ),
              body: businessesLoaded
                  ? Padding(
                      padding: const EdgeInsets.all(15),
                      child: ListView(
                        children: [
                          Column(
                            children: [
                              ClipOval(
                                  child: image == null
                                      ? Image.network(
                                          state.user!.userPhotoUrl!,
                                          width: 120,
                                          height: 120,
                                          fit: BoxFit.cover,
                                        )
                                      : Image.file(
                                          image!,
                                          width: 120,
                                          height: 120,
                                          fit: BoxFit.cover,
                                        )),
                              Divider(
                                height: 60,
                                color: Colors.grey[900],
                              ),
                              Text('My Business information'),
                              SizedBox(
                                height: 20,
                              ),
                              ListTile(
                                contentPadding: EdgeInsets.all(0),
                                onTap: () => showModal(
                                    "Business name",
                                    businessName ??
                                        (usersBusinesses.isEmpty
                                            ? null
                                            : usersBusinesses[0].businessName!),
                                    state),
                                leading: Icon(Icons.person),
                                title: businessName != null
                                    ? (Text(businessName!))
                                    : (usersBusinesses.isEmpty
                                        ? Text('Business name')
                                        : Text(
                                            usersBusinesses[0].businessName!)),
                                trailing: Icon(Icons.edit),
                              ),
                              Divider(),
                              ListTile(
                                contentPadding: EdgeInsets.all(0),
                                onTap: () => showModal(
                                    "Business description",
                                    businessDescription ??
                                        (usersBusinesses.isEmpty
                                            ? null
                                            : usersBusinesses[0]
                                                .businessDescription!),
                                    state),
                                leading: Icon(Icons.store),
                                title: businessDescription != null
                                    ? (Text(businessDescription!))
                                    : (usersBusinesses.isEmpty
                                        ? Text('Business description')
                                        : Text(usersBusinesses[0]
                                            .businessDescription!)),
                                trailing: Icon(Icons.edit),
                              ),
                              Divider(),
                              ListTile(
                                contentPadding: EdgeInsets.all(0),
                                onTap: () async {
                                  final choosenCategories =
                                      await Navigator.pushNamed(
                                          context, '/category_pick',
                                          arguments: {
                                        "sentCategories": serviceCategories ??
                                            (usersBusinesses.isNotEmpty
                                                ? usersBusinesses[0]
                                                    .itemCategories
                                                : [])
                                      });
                                  setState(() {
                                    serviceCategories =
                                        choosenCategories as List<String>;
                                  });
                                },
                                leading: Icon(Icons.category),
                                title: serviceCategories != null
                                    ? (Text(serviceCategories!.join(', ')))
                                    : (usersBusinesses.isEmpty
                                        ? Text('Service categories')
                                        : serviceCategories == null
                                            ? Text(usersBusinesses[0]
                                                .itemCategories!
                                                .join(', '))
                                            : Text(
                                                serviceCategories!.join(', '))),
                                trailing: Icon(Icons.edit),
                              ),
                              Divider(),
                              ListTile(
                                contentPadding: EdgeInsets.all(0),
                                onTap: () => showModal(
                                    "Business address",
                                    businessAddress ??
                                        (usersBusinesses.isEmpty
                                            ? null
                                            : usersBusinesses[0]
                                                .businessLocation!),
                                    state),
                                leading: Icon(Icons.location_on),
                                title: businessAddress != null
                                    ? (Text(businessAddress!))
                                    : (usersBusinesses.isEmpty
                                        ? Text('Business address')
                                        : Text(usersBusinesses[0]
                                            .businessLocation!)),
                                trailing: Icon(Icons.edit),
                              ),
                              // Divider(),
                              // ListTile(
                              //   contentPadding: EdgeInsets.all(0),
                              //   onTap: () => showModal("Open hours"),
                              //   leading: Icon(Icons.location_on),
                              //   title: Text('Open hours'),
                              //   trailing: Icon(Icons.edit),
                              // ),
                              Divider(),
                              InkWell(
                                onTap: () async {
                                  // print('usersBusinesses: $usersBusinesses');
                                  if (usersBusinesses.isEmpty || returnedBusiness != null &&
                                      returnedBusiness!.error != null) {
                                    showInSnackBar(
                                        "To proceed Ensure you have enterred the Name, Description, Item categories and Location of your business");
                                  } else {
                                    await Navigator.pushNamed(
                                        context, '/catalog_edit',
                                        arguments: {
                                          'userNumber': state.user!.userNumber,
                                          'businessPhoto':
                                              state.user!.userPhotoUrl,
                                          'businessDescription':
                                              usersBusinesses[0]
                                                  .businessDescription!,
                                          'businessName':
                                              usersBusinesses[0].businessName!,
                                          'businessId':
                                              usersBusinesses[0].businessId!
                                        });
                                    getUsersBusinesses(
                                        authContact['userNumber']);
                                  }
                                },
                                child: Column(
                                  children: [
                                    ListTile(
                                      contentPadding: EdgeInsets.all(0),
                                      leading: Icon(Icons.add_business),
                                      title: Text('Collections'),
                                      trailing: Icon(Icons.edit),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        for (int i = 0; i < 3; i++)
                                          (usersBusinesses.isNotEmpty && usersBusinesses[0].threeImageUrls !=null && i < usersBusinesses[0].threeImageUrls!.length)
                                              ? ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  child: Image.network(
                                                    getImageUrl(usersBusinesses[
                                                            0]
                                                        .threeImageUrls![i]),
                                                    width: 100,
                                                    height: 100,
                                                    fit: BoxFit.cover,
                                                  ),
                                                )
                                              : ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
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
                              Text('My Bio and phone number'),
                              SizedBox(
                                height: 20,
                              ),
                              ListTile(
                                contentPadding: EdgeInsets.all(0),
                                onTap: () => showModal(
                                    "My Bio",
                                    state.user!.userBio!.isNotEmpty
                                        ? state.user!.userBio
                                        : null,
                                    state),
                                leading: Icon(Icons.insert_emoticon),
                                title: myBio == null
                                    ? Text('${state.user!.userBio}')
                                    : Text('$myBio'),
                                trailing: Icon(Icons.edit),
                              ),
                              Divider(),
                              ListTile(
                                contentPadding: EdgeInsets.all(0),
                                leading: Icon(Icons.call),
                                title: Text('+237 ${state.user!.userNumber}'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  : Center(child: CircularProgressIndicator()));
        });
  }

  void openImagePicker(AppState state) async {
    try {
      var image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return;

      final imageTemporary = File(image.path);
      setState(() {
        imagePath = image.path;
        this.image = imageTemporary;
        print(imagePath);
        saveChanges(state);
      });
    } catch (e) {
      print('Flailed to pick image: $e');
    }
    // StoreProvider.of<AppState>(context).dispatch(UpdateKm(km));
  }

  void showModal(String attribute, String? initialValue, AppState state) {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Padding(
            padding: const EdgeInsets.all(20.0),
            child: Form(
                child: Column(
              children: [
                TextFormField(
                  initialValue: initialValue,
                  maxLines: attribute == 'Business description' ? 4 : null,
                  minLines: attribute == 'Business description' ? 2 : null,
                  onChanged: (value) => setState(() {
                    modalValue = value;
                  }),
                  autofocus: true,
                  decoration: InputDecoration(
                      labelText: attribute,
                      hintText: attribute == "Business address"
                          ? "Street, Town"
                          : null,
                      suffix: attribute == "Business address"
                          ? Text('Cameroon')
                          : null),
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
                        onPressed: () {
                          switch (attribute) {
                            case 'Business name':
                              setState(() {
                                businessName = modalValue;
                              });
                              saveChanges(state);
                              break;
                            case 'Business description':
                              setState(() {
                                businessDescription = modalValue;
                              });
                              saveChanges(state);
                              break;
                            case 'Business address':
                              setState(() {
                                businessAddress = modalValue;
                              });
                              saveChanges(state);

                              break;
                            case 'My Bio':
                              setState(() {
                                myBio = modalValue;
                              });
                              saveChanges(state);
                          }

                          Navigator.pop(context, "saved");
                        },
                        child: Text('SAVE'))
                  ],
                ),
              ],
            )),
          );
        });
  }

  void showInSnackBar(String text) {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(text)));
  }
}
