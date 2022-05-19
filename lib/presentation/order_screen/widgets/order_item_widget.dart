import '../controller/order_controller.dart';
import '../models/order_item_model.dart';
import 'package:business/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class OrderItemWidget extends StatelessWidget {
  OrderItemWidget(this.orderItemModelObj);

  OrderItemModel orderItemModelObj;

  var controller = Get.find<OrderController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: getVerticalSize(
          5.00,
        ),
        bottom: getVerticalSize(
          5.00,
        ),
      ),
      decoration: BoxDecoration(
        color: ColorConstant.whiteA700,
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            5.00,
          ),
        ),
        border: Border.all(
          color: ColorConstant.blue50,
          width: getHorizontalSize(
            1.00,
          ),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: getHorizontalSize(
                16.00,
              ),
              top: getVerticalSize(
                6.00,
              ),
              right: getHorizontalSize(
                16.00,
              ),
            ),
            child: Text(
              "lbl_sdg1345kjd".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.textStylePoppinsbold141.copyWith(
                fontSize: getFontSize(
                  14,
                ),
                letterSpacing: 0.50,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: getHorizontalSize(
                16.00,
              ),
              right: getHorizontalSize(
                16.00,
              ),
            ),
            child: Text(
              "msg_order_at_e_com".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.right,
              style: AppStyle.textStylePoppinsregular121.copyWith(
                fontSize: getFontSize(
                  12,
                ),
                letterSpacing: 0.50,
              ),
            ),
          ),
          Container(
            height: getVerticalSize(
              1.00,
            ),
            width: getHorizontalSize(
              344.00,
            ),
            margin: EdgeInsets.only(
              top: getVerticalSize(
                22.00,
              ),
            ),
            decoration: BoxDecoration(
              color: ColorConstant.blue50,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.only(
                left: getHorizontalSize(
                  16.00,
                ),
                top: getVerticalSize(
                  13.00,
                ),
                right: getHorizontalSize(
                  16.00,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    "lbl_order_status".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.textStylePoppinsregular121.copyWith(
                      fontSize: getFontSize(
                        12,
                      ),
                      letterSpacing: 0.50,
                    ),
                  ),
                  Text(
                    "lbl_shipping".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.right,
                    style: AppStyle.textStylePoppinsregular121.copyWith(
                      fontSize: getFontSize(
                        12,
                      ),
                      letterSpacing: 0.50,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.only(
                left: getHorizontalSize(
                  16.00,
                ),
                top: getVerticalSize(
                  7.00,
                ),
                right: getHorizontalSize(
                  16.00,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    "lbl_items".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.textStylePoppinsregular121.copyWith(
                      fontSize: getFontSize(
                        12,
                      ),
                      letterSpacing: 0.50,
                    ),
                  ),
                  Text(
                    "msg_1_items_purchas".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.right,
                    style: AppStyle.textStylePoppinsregular121.copyWith(
                      fontSize: getFontSize(
                        12,
                      ),
                      letterSpacing: 0.50,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.only(
                left: getHorizontalSize(
                  16.00,
                ),
                top: getVerticalSize(
                  7.00,
                ),
                right: getHorizontalSize(
                  16.00,
                ),
                bottom: getVerticalSize(
                  5.00,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    "lbl_price".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.textStylePoppinsregular121.copyWith(
                      fontSize: getFontSize(
                        12,
                      ),
                      letterSpacing: 0.50,
                    ),
                  ),
                  Text(
                    "lbl_299_43".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.right,
                    style: AppStyle.textStylePoppinsbold121.copyWith(
                      fontSize: getFontSize(
                        12,
                      ),
                      letterSpacing: 0.50,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
