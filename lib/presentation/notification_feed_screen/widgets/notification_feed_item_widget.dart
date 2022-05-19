import '../controller/notification_feed_controller.dart';
import '../models/notification_feed_item_model.dart';
import 'package:business/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class NotificationFeedItemWidget extends StatelessWidget {
  NotificationFeedItemWidget(this.notificationFeedItemModelObj);

  NotificationFeedItemModel notificationFeedItemModelObj;

  var controller = Get.find<NotificationFeedController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorConstant.whiteA700,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: getHorizontalSize(
                16.00,
              ),
              top: getVerticalSize(
                16.00,
              ),
              bottom: getVerticalSize(
                56.00,
              ),
            ),
            child: Image.asset(
              ImageConstant.imgProductimage10,
              height: getSize(
                48.00,
              ),
              width: getSize(
                48.00,
              ),
              fit: BoxFit.fill,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: getHorizontalSize(
                12.00,
              ),
              top: getVerticalSize(
                16.00,
              ),
              right: getHorizontalSize(
                16.00,
              ),
              bottom: getVerticalSize(
                16.00,
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "lbl_new_product".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.textStylePoppinsbold141.copyWith(
                    fontSize: getFontSize(
                      14,
                    ),
                    letterSpacing: 0.50,
                  ),
                ),
                Container(
                  width: getHorizontalSize(
                    283.00,
                  ),
                  margin: EdgeInsets.only(
                    top: getVerticalSize(
                      4.00,
                    ),
                  ),
                  child: Text(
                    "msg_nike_air_zoom_p2".tr,
                    maxLines: null,
                    textAlign: TextAlign.left,
                    style: AppStyle.textStylePoppinsregular12.copyWith(
                      fontSize: getFontSize(
                        12,
                      ),
                      letterSpacing: 0.50,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: getVerticalSize(
                      4.00,
                    ),
                  ),
                  child: Text(
                    "msg_june_3_2015_5".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.textStylePoppinsregular101.copyWith(
                      fontSize: getFontSize(
                        10,
                      ),
                      letterSpacing: 0.50,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
