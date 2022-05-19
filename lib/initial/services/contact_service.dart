import 'dart:convert';
import 'package:business/initial/shared/connection.dart';
import 'package:http/http.dart';

import 'package:business/initial/models/contact.dart';

class ContactService {
  final String contactURL = "$hostAndPort/contact";

  Future<List<Contact>> fetchUsersContacts(int usersNumber) async {
    try {
      Response res = await get(Uri.parse('$contactURL/$usersNumber'));

      if (res.statusCode == 200) {
        List<dynamic> body = jsonDecode(res.body);

        List<Contact> contacts = body
            .map(
              (dynamic item) => Contact.fromJson(item),
        )
            .toList();

        return contacts;
      } else {
        print('error status: ${res.statusCode}');
        print('error body: ${jsonDecode(res.body)}');
        throw "Unable to retrieve Contacts: Server Error";
      }
    } catch (e) {
      print(e);
      throw "Unable to retrieve contacts: Client error";
      // console.log(err.message);
      // console.log(err.response.data);
      // console.log(err.response.status);

    }
  }


}
