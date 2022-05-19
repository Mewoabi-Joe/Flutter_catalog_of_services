import '../controller/notification1_controller.dart';
import '../models/notification1_item_model.dart';
import 'package:business/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore: must_be_immutable
class Notification1ItemWidget extends StatelessWidget {
  Notification1ItemWidget(this.notification1ItemModelObj);

  Notification1ItemModel notification1ItemModelObj;

  var controller = Get.find<Notification1Controller>();

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
                110.00,
              ),
            ),
            child: Container(
              height: getSize(
                24.00,
              ),
              width: getSize(
                24.00,
              ),
              child: SvgPicture.asset(
                ImageConstant.imgTransactionico,
                fit: BoxFit.fill,
              ),
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
                  "msg_transaction_nik".tr,
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
                    307.00,
                  ),
                  margin: EdgeInsets.only(
                    top: getVerticalSize(
                      8.00,
                    ),
                  ),
                  child: Text(
                    "msg_culpa_cillum_co".tr,
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
                      8.00,
                    ),
                  ),
                  child: Text(
                    "msg_april_30_2014".tr,
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
