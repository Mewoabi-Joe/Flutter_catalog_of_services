import '/core/app_export.dart';
import 'package:business/presentation/notification_screen/models/notification_model.dart';

class NotificationController extends GetxController with StateMixin<dynamic> {
  Rx<NotificationModel> notificationModelObj = NotificationModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
