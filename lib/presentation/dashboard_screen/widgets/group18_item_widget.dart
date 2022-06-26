import '../../../initial/models/item.dart';
import '../controller/dashboard_controller.dart';
import '../models/group18_item_model.dart';
import 'package:business/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Group18ItemWidget extends StatelessWidget {
  Group18ItemWidget(this.item);
  // Group18ItemWidget(this.group18ItemModelObj);

  // Group18ItemModel group18ItemModelObj;
  Item? item;

  // var controller = Get.find<DashboardController>();

  @override
  Widget build(BuildContext context) {
    return  Align(
      alignment: Alignment.center,
      child: InkWell(
        onTap: () => Get.toNamed(AppRoutes.productDetailScreen, parameters: {"itemName": item!.itemName!,'itemPrice':item!.itemPrice!.toString(),'itemDescirption':item!.itemPrice!.toString(),'itemImage':item!.itemImage!,'itemId':item!.itemId!,'itemRating':item!.itemRating!.toString()}),
        child: Container(
          height: getVerticalSize(
            206.00,
          ),
          width: getHorizontalSize(
            343.00,
          ),
          child: Stack(
            alignment: Alignment.centerLeft,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Image.network(
                  item!.itemImage!,
                  height: getVerticalSize(
                    206.00,
                  ),
                  width: getHorizontalSize(
                    343.00,
                  ),
                  fit: BoxFit.fill,
                )
              ),
              InkWell(
                onTap: ()=> Get.toNamed(AppRoutes.productDetailScreen, parameters: {'itemName':item!.itemName!,
                  'itemImage':item!.itemImage!, 'itemDescription': item!.itemDescription!, 'itemRating':item!.itemRating!.toString(),
                  'itemPrice': item!.itemPrice.toString(), 'catalogId':item!.catalogId!, 'itemId': item!.itemId!}),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: getHorizontalSize(
                        24.00,
                      ),
                      top: getVerticalSize(
                        32.00,
                      ),
                      right: getHorizontalSize(
                        24.00,
                      ),
                      bottom: getVerticalSize(
                        32.00,
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: getHorizontalSize(
                            209.00,
                          ),
                          child: Text(
                            "msg_super_flash_sal".tr,
                            maxLines: null,
                            textAlign: TextAlign.left,
                            style: AppStyle.textStylePoppinsbold24.copyWith(
                              fontSize: getFontSize(
                                24,
                              ),
                              letterSpacing: 0.50,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: getVerticalSize(
                              29.00,
                            ),
                            right: getHorizontalSize(
                              10.00,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                alignment: Alignment.center,
                                height: getVerticalSize(
                                  41.00,
                                ),
                                width: getHorizontalSize(
                                  42.00,
                                ),
                                decoration: AppDecoration.textStylePoppinsbold16,
                                child: Text(
                                  "lbl_08".tr,
                                  textAlign: TextAlign.center,
                                  style: AppStyle.textStylePoppinsbold16.copyWith(
                                    fontSize: getFontSize(
                                      16,
                                    ),
                                    letterSpacing: 0.50,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: getHorizontalSize(
                                    4.00,
                                  ),
                                  top: getVerticalSize(
                                    10.00,
                                  ),
                                  bottom: getVerticalSize(
                                    10.00,
                                  ),
                                ),
                                child: Text(
                                  "lbl".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: AppStyle.textStylePoppinsbold14.copyWith(
                                    fontSize: getFontSize(
                                      14,
                                    ),
                                    letterSpacing: 0.07,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: getHorizontalSize(
                                    4.00,
                                  ),
                                ),
                                child: Container(
                                  alignment: Alignment.center,
                                  height: getVerticalSize(
                                    41.00,
                                  ),
                                  width: getHorizontalSize(
                                    42.00,
                                  ),
                                  decoration: AppDecoration.textStylePoppinsbold16,
                                  child: Text(
                                    "lbl_34".tr,
                                    textAlign: TextAlign.center,
                                    style: AppStyle.textStylePoppinsbold16.copyWith(
                                      fontSize: getFontSize(
                                        16,
                                      ),
                                      letterSpacing: 0.50,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: getHorizontalSize(
                                    4.00,
                                  ),
                                  top: getVerticalSize(
                                    10.00,
                                  ),
                                  bottom: getVerticalSize(
                                    10.00,
                                  ),
                                ),
                                child: Text(
                                  "lbl".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: AppStyle.textStylePoppinsbold14.copyWith(
                                    fontSize: getFontSize(
                                      14,
                                    ),
                                    letterSpacing: 0.07,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: getHorizontalSize(
                                    4.00,
                                  ),
                                ),
                                child: Container(
                                  alignment: Alignment.center,
                                  height: getVerticalSize(
                                    41.00,
                                  ),
                                  width: getHorizontalSize(
                                    42.00,
                                  ),
                                  decoration: AppDecoration.textStylePoppinsbold16,
                                  child: Text(
                                    "lbl_52".tr,
                                    textAlign: TextAlign.center,
                                    style: AppStyle.textStylePoppinsbold16.copyWith(
                                      fontSize: getFontSize(
                                        16,
                                      ),
                                      letterSpacing: 0.50,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
