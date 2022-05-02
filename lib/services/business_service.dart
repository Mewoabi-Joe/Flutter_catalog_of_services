// import '../shared/connection.dart';
//
// class BusinessService{
//   final String businessURL = "$hostAndPort/business";
//
//   Future<List<User>> fetchUsers() async {
//     try {
//       Response res = await get(Uri.parse(userURL));
//
//       if (res.statusCode == 200) {
//         List<dynamic> body = jsonDecode(res.body);
//
//         List<User> users = body
//             .map(
//               (dynamic item) => User.fromJson(item),
//         )
//             .toList();
//
//         return users;
//       } else {
//         print('error status: ${res.statusCode}');
//         print('error body: ${jsonDecode(res.body)}');
//         throw "Unable to retrieve posts: Server Error";
//       }
//     } catch (e) {
//       print(e);
//       throw "Unable to retrieve users: Client error";
//       // console.log(err.message);
//       // console.log(err.response.data);
//       // console.log(err.response.status);
//
//     }
//   }
// }