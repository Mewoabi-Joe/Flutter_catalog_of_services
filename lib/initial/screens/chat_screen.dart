// import 'package:catalog_of_services/models/contact.dart';
// import 'package:flutter/material.dart';
//
// class ChatScreen extends StatefulWidget {
//   const ChatScreen({Key? key}) : super(key: key);
//
//   @override
//   State<ChatScreen> createState() => _ChatScreenState();
// }
//
// class _ChatScreenState extends State<ChatScreen> {
//   Map data = {};
//
//   @override
//   Widget build(BuildContext context) {
//     data = ModalRoute.of(context)!.settings.arguments as Map;
//     Contact contact = data['contact'];
//
//     print(contact);
//     return Scaffold(
//       appBar: AppBar(
//         title: InkWell(
//           onTap: () {
//             Navigator.pushNamed(context, '/profile',
//                 arguments: {contact: contact});
//           },
//           child: Row(
//             children: [
//               CircleAvatar(
//                 backgroundImage: AssetImage('assets/${contact.userPhotoPath}'),
//               ),
//               SizedBox(width: 10,),
//               Text(contact.name)
//             ],
//           ),
//         ),
//         actions: <Widget>[
//           IconButton(onPressed: () {}, icon: Icon(Icons.badge)),
//           IconButton(onPressed: () {}, icon: Icon(Icons.call)),
//           IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
//         ],
//       ),
//       body: const Center(
//         child: Text('Chat page'),
//       ),
//     );
//   }
// }
