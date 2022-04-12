import 'package:flutter/material.dart';
import 'package:catalog_of_services/models/contact.dart';
import 'package:catalog_of_services/services/contact_service.dart';
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

  void getUserTheUsersContacts(int usersContact) async {
    List<Contact> gottenContacts =
        await contactService.fetchUsersContacts(usersContact);
    setState(() {
      this.usersContacts = gottenContacts;
      this.contactsLoaded = true;
    });
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    if (!contactsLoaded) {
      super.didChangeDependencies();
      var theMap = ModalRoute.of(context)!.settings.arguments;
      authContact = theMap == null ? {} : theMap as Map;
      getUserTheUsersContacts(int.parse(authContact['userNumber']));
    }
  }

  @override
  Widget build(BuildContext context) {
    print('Auth contact: $authContact');
    print('Users contacts: $usersContacts');
    return StoreConnector<AppState, AppState>(
        converter: (store) => store.state,
        builder: (context, state) {
          return Scaffold(
              appBar: AppBar(
                automaticallyImplyLeading: false,
                actions: <Widget>[
                  PopupMenuButton<String>(
                    onSelected: (value) => showInSnackBar(value),
                    itemBuilder: (context) => <PopupMenuItem<String>>[
                      const PopupMenuItem<String>(
                        value: 'Business',
                        child: Text('Business'),
                      ),
                      const PopupMenuItem<String>(
                        value: 'New contact',
                        child: Text(
                          'New contact',
                        ),
                      ),
                      const PopupMenuItem<String>(
                        value: 'Exit',
                        child: Text(
                          'Exit',
                        ),
                      ),
                    ],
                  )
                ],
                title: const Text('Polytech Social'),
              ),
              body: contactsLoaded
                  ? ListView(
                      restorationId: 'list_demo_list_view',
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      children: [
                        for (int index = 0;
                            index < this.usersContacts!.length;
                            index++)
                          ListTile(
                            leading: ExcludeSemantics(
                              child: CircleAvatar(
                                backgroundImage: NetworkImage(
                                    usersContacts![index].contactPhotoURL!),
                              ),
                            ),
                            title: Text(
                              usersContacts![index].givenName!,
                            ),
                            subtitle: Text(usersContacts![index].contactBio!),
                            // onTap: (){
                            //   Navigator.pushNamed(context, '/chat', arguments:  {
                            //     'contact': contacts[index],
                            //   });
                            // },
                          ),
                      ],
                    )
                  : const Center(child: CircularProgressIndicator()));
        });
  }

  void showInSnackBar(String text) {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(text)));
  }
}
