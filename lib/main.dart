import 'package:business/initial/redux/reducers.dart';
import 'package:business/initial/redux/store.dart';
import 'package:business/initial/screens/business_edit_screen.dart';
import 'package:business/initial/screens/business_profile_create_screen.dart';
import 'package:business/initial/screens/catalog_create_screen.dart';
import 'package:business/initial/screens/catalog_edit_screen.dart';
import 'package:business/initial/screens/catalog_screen.dart';
import 'package:business/initial/screens/category_pick_screen.dart';
import 'package:business/initial/screens/contact_screen.dart';
import 'package:business/initial/screens/item_create_screen.dart';
import 'package:business/initial/screens/item_edit_screen.dart';
import 'package:business/initial/screens/pick_user_screen.dart';
import 'package:business/initial/screens/settings_screen.dart';
import 'package:business/initial/screens/catalog_create_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import 'core/app_export.dart';

void main() {
  Store<AppState> _store =
      Store<AppState>(reducers, initialState: AppState.initial());
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(MyApp(store: _store));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  final Store<AppState> store;

  const MyApp({Key? key, required this.store}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: GetMaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routes: {
          '/pick_user': (context) => PickUserScreen(),
          '/business_edit': (context) => BusinessEditScreen(),
          '/catalog_edit': (context) => CatalogEditScreen(),
          '/catalog_create': (context) => CatalogCreateScreeen(),
          '/item_edit': (context) => ItemEditScreen(),
          '/item_create': (context) => ItemCreateScreen(),
          '/settings': (context) => SettingsScreen(),
          '/contact': (context) => ContactScreen(),
          '/catalog': (context) => CatalogScreen(),
          '/category_pick': (context) => CategoryPickScreen(),
          '/business_profile_create': (context) =>
              BusinessProfileCreateScreen(),
        },
        debugShowCheckedModeBanner: false,
        translations: AppLocalization(),
        locale: Get.deviceLocale,
        //for setting localization strings
        fallbackLocale: Locale('en', 'US'),
        title: 'business',
        initialBinding: InitialBindings(),
        initialRoute: AppRoutes.pickUser,
        // initialRoute: AppRoutes.initialRoute,
        getPages: AppRoutes.pages,
      ),
    );
  }
}
