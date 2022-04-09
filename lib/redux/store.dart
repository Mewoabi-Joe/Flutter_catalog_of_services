// import 'package:camera/camera.dart';

import '../models/user.dart';

class AppState {
  User? user;
  // CameraDescription? camera;

  // bool? isPublicAccount;
  // bool? isBusinessAccount;
  // String? email;

  AppState(
    this.user,
  );

  AppState.copyWith(
      {required AppState prev,
      User? user,
        // CameraDescription? camera
    }) {

    this.user = user ?? prev.user;
    // this.camera = camera ?? prev.camera;
  }

  AppState.initial() {
    this.user = null;
    // this.camera = null;
  }
}
