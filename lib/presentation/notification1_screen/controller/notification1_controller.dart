import '/core/app_export.dart';
import 'package:business/presentation/notification1_screen/models/notification1_model.dart';

class Notification1Controller extends GetxController with StateMixin<dynamic> {
  Rx<Notification1Model> notification1ModelObj = Notification1Model().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
