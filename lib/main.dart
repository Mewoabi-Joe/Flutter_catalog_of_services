import 'package:catalog_of_services/pages/catalog_page.dart';
import 'package:catalog_of_services/pages/chat_page.dart';
import 'package:catalog_of_services/pages/pick_user_page.dart';
import 'package:catalog_of_services/pages/profile_page.dart';
// import 'package:catalog_of_services/redux/middleware.dart';
import 'package:catalog_of_services/redux/reducers.dart';
import 'package:catalog_of_services/redux/store.dart';
import 'package:flutter/material.dart';
import 'package:catalog_of_services/pages/contact_page.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

void main() {
  Store<AppState> _store = Store<AppState>(reducers, initialState: AppState.initial());
  runApp( MyApp(store: _store));
}

class MyApp extends StatelessWidget {
  final Store<AppState> store;
  const MyApp({Key? key, required this.store}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => PickUserPage(),
          '/contact': (context) => ContactPage(),
          '/catalog': (context) => CatalogPage(),
          // '/chat': (context) => ChatPage(),
          // '/profile': (context) => ProfilePage()
        },
      ),
    );
  }
}





