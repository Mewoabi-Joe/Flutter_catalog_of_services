import 'package:flutter/material.dart';
import 'package:catalog_of_services/models/contact.dart';
import 'package:catalog_of_services/services/contact_service.dart';
import 'package:flutter_redux/flutter_redux.dart';

import '../redux/store.dart';


class ContactPage extends StatefulWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  bool contactsLoaded = false;
  List<Contact>? usersContacts;
  final ContactService contactService = ContactService();
  Map authContact  = {};

  void getUserTheUsersContacts(int usersContact) async {
    List<Contact> gottenContacts = await contactService.fetchUsersContacts(usersContact);
    setState(() {
     this.usersContacts = gottenContacts;
     this.contactsLoaded = true;
    });
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    if(!contactsLoaded){
      super.didChangeDependencies();
      var theMap = ModalRoute.of(context)!.settings.arguments;
      authContact =  theMap == null? {}: theMap as Map;
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
           IconButton(
           icon: Icon(
             Icons.more_vert
           ),
             onPressed: () => {
             Navigator.pushNamed(context, '/catalog')
             },
          )],
            title: Text('Polytech Social'),
          ),
          body: contactsLoaded ? ListView(
            restorationId: 'list_demo_list_view',
            padding: const EdgeInsets.symmetric(vertical: 8),
            children: [
              for (int index = 0; index < this.usersContacts!.length; index++)
                ListTile(
                  leading: ExcludeSemantics(
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(usersContacts![index].contactPhotoURL!),
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
          ):
              Center(child: CircularProgressIndicator())
        );
      }
    );
  }
}
