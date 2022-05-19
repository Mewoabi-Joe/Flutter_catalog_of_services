import '../controller/notification_feed_controller.dart';
import 'package:get/get.dart';

class NotificationFeedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NotificationFeedController());
  }
}
