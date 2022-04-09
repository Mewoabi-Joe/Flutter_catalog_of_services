
import '../models/user.dart';

abstract class Action{}

// class UpdateCamera extends Action{
//   CameraDescription? payload;
//
//   UpdateCamera(
//       this.payload,
//       );
// }

class UpdateUser extends Action {
  User? payload;

  UpdateUser(
    this.payload,
  );
}

// class UpdateKmCleaned extends Action {
//   String payload;
//
//   UpdateKmCleaned(
//     this.payload,
//   );
// }
//
// class UpdateMiles extends Action {
//   String payload;
//
//   UpdateMiles(this.payload);
// }