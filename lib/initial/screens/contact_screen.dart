import 'package:business/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:business/initial/models/contact.dart';
import 'package:business/initial/services/contact_service.dart';
import 'package:flutter_redux/flutter_redux.dart';

import '../redux/store.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  _ContactScreenState createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  bool contactsLoaded = false;
  List<Contact>? usersContacts;
  final ContactService contactService = ContactService();
  Map authContact = {};

  // void getUserTheUsersContacts(int usersContact) async {
  //   List<Contact> gottenContacts =
  //       await contactService.fetchUsersContacts(usersContact);
  //   setState(() {
  //     usersContacts = gottenContacts;
  //     contactsLoaded = true;
  //   });
  // }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    if (!contactsLoaded) {
      super.didChangeDependencies();
      var theMap = ModalRoute.of(context)!.settings.arguments;
      authContact = theMap == null ? {} : theMap as Map;
      // getUserTheUsersContacts(int.parse(authContact['userNumber']));
    }
  }

  @override
  Widget build(BuildContext context) {
    // print('Auth contact: $authContact');
    // print('Users contacts: $usersContacts');
    return StoreConnector<AppState, AppState>(
        converter: (store) => store.state,
        builder: (context, state) {
          return Scaffold(
              appBar: AppBar(
                automaticallyImplyLeading: false,
                title: const Text('Polytech Social'),
              ),
              body:  Container(
                // foregroundDecoration: Colors.grey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Divider(color: Colors.grey,),
                  if (state.user!.isBusinessAccount!)
                    InkWell(
                      onTap: ()=> Navigator.pushNamed(context, '/business_edit',arguments:  {
                        'userNumber': state.user!.userNumber}),
                      child: ListTile(
                        leading: ExcludeSemantics(
                          child: Icon(Icons.handyman
                          ),
                        ),
                        title: Text(
                          'BUSINESS TOOLS',
                        ),
                        subtitle: Text('As a business user you can edit your business profile and items you sell'),
                      ),
                    ),
                    Divider(color: Colors.grey,),
                  InkWell(
                    onTap: ()=> Get.toNamed(AppRoutes.initialRoute),
                    child: ListTile(
                      leading: ExcludeSemantics(
                        child: Icon(Icons.shopping_basket
                        ),
                      ),
                      title: Text(
                        'MARKET',
                      ),
                      subtitle: Text('You can view all items put on sale by all business users'),
                    ),

                  ),
                    Divider(color: Colors.grey,),
                    InkWell(
                      onTap: ()=> Navigator.pushNamed(context, '/settings'),
                    child: ListTile(
                      leading: ExcludeSemantics(
                        child: Icon(Icons.settings
                        ),
                      ),
                      title: Text(
                        'SETTINGS ',
                      ),
                      subtitle: Text('become a business user if you are not yet one or deactivate it if you are already a business user'),
                    ),
                  ),
                    Divider(color: Colors.grey,),
                    InkWell(
                      onTap: ()=> Navigator.pop(context),
                    child: ListTile(
                      leading: ExcludeSemantics(
                        child: Icon(Icons.exit_to_app
                        ),
                      ),
                      title: Text(
                        'EXIT (just for demo)',
                      ),
                      subtitle: Text('Go back to screen where you can pick and existing user or create one'),
                    ),
                  ),
                    Divider(color: Colors.grey,),
                    SizedBox(height: 200,)
                ],),
              ));
        });
  }

  void showInSnackBar(String text) {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(text)));
  }

  // handleSelectedOption(String value, AppState state) async {
  //   if (value == 'Business Tools') {
  //       Navigator.pushNamed(context, '/business_edit',arguments:  {
  //       'userNumber': state.user!.userNumber});
  //   } else if (value == 'Exit') {
  //     Navigator.pop(context);
  //   } else if (value == 'Settings') {
  //     Navigator.pushNamed(context, '/settings');
  //   }
  // }
}