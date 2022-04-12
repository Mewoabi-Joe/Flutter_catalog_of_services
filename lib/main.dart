// import 'package:catalog_of_services/redux/middleware.dart';
import 'package:catalog_of_services/redux/reducers.dart';
import 'package:catalog_of_services/redux/store.dart';
import 'package:catalog_of_services/screens/catalog_screen.dart';
import 'package:catalog_of_services/screens/contact_screen.dart';
import 'package:catalog_of_services/screens/pick_user_screen.dart';
import 'package:flutter/material.dart';
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
          '/': (context) => PickUserScreen(),
          '/contact': (context) => ContactScreen(),
          '/catalog': (context) => CatalogScreen(),
          // '/chat': (context) => ChatScreen(),
          // '/profile': (context) => ProfileScreen()
        },
      ),
    );
  }
}





