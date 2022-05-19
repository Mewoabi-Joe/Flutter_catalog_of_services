import '../controller/notification_offer_controller.dart';
import 'package:get/get.dart';

class NotificationOfferBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NotificationOfferController());
  }
}
