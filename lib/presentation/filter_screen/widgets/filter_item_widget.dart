import '../controller/filter_controller.dart';
import '../models/filter_item_model.dart';
import 'package:business/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FilterItemWidget extends StatelessWidget {
  FilterItemWidget(this.filterItemModelObj);

  FilterItemModel filterItemModelObj;

  var controller = Get.find<FilterController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: getVerticalSize(
          4.00,
        ),
        bottom: getVerticalSize(
          4.00,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            alignment: Alignment.center,
            height: getVerticalSize(
              50.00,
            ),
            width: getHorizontalSize(
              101.00,
            ),
            decoration: AppDecoration.textStylePoppinsbold127,
            child: Text(
              "lbl_sold_items".tr,
              textAlign: TextAlign.center,
              style: AppStyle.textStylePoppinsbold127.copyWith(
                fontSize: getFontSize(
                  12,
                ),
                letterSpacing: 0.50,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: getHorizontalSize(
                8.00,
              ),
            ),
            child: Container(
              alignment: Alignment.center,
              height: getVerticalSize(
                50.00,
              ),
              width: getHorizontalSize(
                135.00,
              ),
              decoration: AppDecoration.textStylePoppinsregular123,
              child: Text(
                "lbl_deals_savings".tr,
                textAlign: TextAlign.center,
                style: AppStyle.textStylePoppinsregular123.copyWith(
                  fontSize: getFontSize(
                    12,
                  ),
                  letterSpacing: 0.50,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
