import 'package:catalog_of_services/services/user_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

import '../models/user.dart';
import '../redux/actions.dart';
import '../redux/store.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  UserService userService = UserService();

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppState>(
        converter: (store) => store.state,
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              // leading: IconButton(
              //   icon: Icon(Icons.arrow_back),
              //   onPressed: () => Navigator.pop(
              //       context, setBusinessUserToTrue.toString()),
              // ),
              title: Text('Settings'),
            ),
            body: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  ListTile(
                    title: Text("Business User"),
                    subtitle: Text(
                        'If turned on you can configure a catalog of your services '
                        'which will be visible to other users'),
                    trailing: Switch(
                      value: state.user!.isBusinessAccount!,
                      onChanged: (value) async {
                        User updatedUser = await userService
                            .changeToggleBusinessUser(state.user!.userNumber!, value );
                        StoreProvider.of<AppState>(context)
                            .dispatch(UpdateUser(updatedUser));
                      },
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}
