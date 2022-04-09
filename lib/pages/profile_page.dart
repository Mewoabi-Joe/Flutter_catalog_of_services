// import 'package:catalog_of_services/models/contact.dart';
// import 'package:flutter/material.dart';
//
// class ProfilePage extends StatefulWidget {
//   @override
//   _ProfilePageState createState() => _ProfilePageState();
// }
//
// class _ProfilePageState extends State<ProfilePage> {
//   Map data ={};
//   @override
//   Widget build(BuildContext context) {
//     data = ModalRoute.of(context)!.settings.arguments as Map;
//     Contact  contact = data['contact'];
//     return Scaffold(
//       body: SafeArea(
//         child: Column(
//           children: [
//             CircleAvatar(
//               backgroundImage: AssetImage(
//                 'assets/${contact.userPhotoPath}'
//               ),
//             ),
//             SizedBox(width: 10 ,),
//             Text(contact.name),
//             //SizedBox(width: 10 ,),
//             //Text(contact.name) //TODO: FORMAT SERVICE TYPES HERE
//             //SizedBox(width: 10 ,),
//             //Text(contact.name) TODO: FOMAT OPEN HOURS HERE
//             SizedBox(width: 10,),
//             Row(
//               children: [
//                 Column(
//                   children: [
//                     IconButton(onPressed: (){
//
//                     }, icon: Icon(
//                       Icons.message
//                     )),
//                     Text('Message')
//                   ],
//                 ),
//                 Column(
//                   children: [
//                     IconButton(onPressed: (){
//
//                     }, icon: Icon(
//                       Icons.call
//                     )),
//                     Text('Call')
//                   ],
//                 ),
//                 Column(
//                   children: [
//                     IconButton(onPressed: (){
//
//                     }, icon: Icon(
//                       Icons.call
//                     )),
//                     Text('Call')
//                   ],
//                 )
//               ],
//             )
//           ],
//         ),
//       )
//     );
//   }
// }
