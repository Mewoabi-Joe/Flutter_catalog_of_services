import '/core/app_export.dart';
import 'package:business/presentation/notification_feed_screen/models/notification_feed_model.dart';

class NotificationFeedController extends GetxController
    with StateMixin<dynamic> {
  Rx<NotificationFeedModel> notificationFeedModelObj =
      NotificationFeedModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
