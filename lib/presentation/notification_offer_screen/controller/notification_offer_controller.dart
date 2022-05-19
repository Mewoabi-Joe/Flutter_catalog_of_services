import '/core/app_export.dart';
import 'package:business/presentation/notification_offer_screen/models/notification_offer_model.dart';

class NotificationOfferController extends GetxController
    with StateMixin<dynamic> {
  Rx<NotificationOfferModel> notificationOfferModelObj =
      NotificationOfferModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
