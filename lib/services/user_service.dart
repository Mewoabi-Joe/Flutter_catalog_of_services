import 'dart:convert';
import 'dart:io';
import 'package:catalog_of_services/shared/connection.dart';
import 'package:http/http.dart';

import 'package:catalog_of_services/models/user.dart';

class UserService {
  final String userURL = "$hostAndPort/user";

  Future<List<User>> fetchUsers() async {
    try {
      Response res = await get(Uri.parse(userURL));

      if (res.statusCode == 200) {
        List<dynamic> body = jsonDecode(res.body);

        List<User> users = body
            .map(
              (dynamic item) => User.fromJson(item),
            )
            .toList();

        return users;
      } else {
        print('error status: ${res.statusCode}');
        print('error body: ${jsonDecode(res.body)}');
        throw "Unable to retrieve posts: Server Error";
      }
    } catch (e) {
      print(e);
      throw "Unable to retrieve users: Client error";
      // console.log(err.message);
      // console.log(err.response.data);
      // console.log(err.response.status);

    }
  }

  Future<User> createUser(User user) async {
    try {
      print(user.userPhotoUrl);
      var request = MultipartRequest("POST", Uri.parse(userURL));
      request.files
          .add( MultipartFile.fromBytes("userPhoto",File(user.userPhotoUrl!).readAsBytesSync(),filename: user.userPhotoUrl!.split("/").last));
      request.fields['userNumber'] = user.userNumber.toString();
      request.fields['userName'] = user.userName ?? "";
      request.fields['userBio'] = user.userBio ?? "";

      var response = await request.send();

      var res = await Response.fromStream(response);
      if (res.statusCode == 201) {
        Map<String, dynamic> body = jsonDecode(res.body);
        User returnedUser = User.fromJson(body);
        print('Returned user: ${returnedUser.toString()}');
        return returnedUser;
      } else {
        print('error status: ${res.statusCode}');
        print('error body: ${jsonDecode(res.body)}');
        throw "Unable to save user: Server Error";
      }
    } catch (e) {
      print(e);
      throw "Unable to save user: Client error";
      // console.log(err.message);
      // console.log(err.response.data);
      // console.log(err.response.status);

    }
  }
}
