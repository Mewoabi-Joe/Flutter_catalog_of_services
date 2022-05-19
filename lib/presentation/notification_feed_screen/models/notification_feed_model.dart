import 'package:get/get.dart';
import 'notification_feed_item_model.dart';

class NotificationFeedModel {
  RxList<NotificationFeedItemModel> notificationFeedItemList =
      RxList.filled(3, NotificationFeedItemModel());
}
