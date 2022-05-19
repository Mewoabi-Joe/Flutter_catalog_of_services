import 'controller/short_by_controller.dart';
import 'package:business/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ShortByScreen extends GetWidget<ShortByController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Container(
              decoration: BoxDecoration(
                color: ColorConstant.whiteA700,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: getVerticalSize(
                          26.00,
                        ),
                        bottom: getVerticalSize(
                          20.00,
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: size.width,
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: getHorizontalSize(
                                  16.00,
                                ),
                                right: getHorizontalSize(
                                  247.00,
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    height: getSize(
                                      24.00,
                                    ),
                                    width: getSize(
                                      24.00,
                                    ),
                                    child: SvgPicture.asset(
                                      ImageConstant.imgLefticon,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: getHorizontalSize(
                                        12.00,
                                      ),
                                    ),
                                    child: Text(
                                      "lbl_shory_by".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.textStylePoppinsbold161
                                          .copyWith(
                                        fontSize: getFontSize(
                                          16,
                                        ),
                                        letterSpacing: 0.50,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: size.width,
                            margin: EdgeInsets.only(
                              top: getVerticalSize(
                                28.00,
                              ),
                            ),
                            padding: EdgeInsets.only(
                              left: getHorizontalSize(
                                16.00,
                              ),
                              top: getVerticalSize(
                                16.00,
                              ),
                              bottom: getVerticalSize(
                                16.00,
                              ),
                            ),
                            decoration: AppDecoration.textStylePoppinsbold123,
                            child: Text(
                              "lbl_best_match".tr,
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.textStylePoppinsbold123.copyWith(
                                fontSize: getFontSize(
                                  12,
                                ),
                                letterSpacing: 0.50,
                              ),
                            ),
                          ),
                          Container(
                            width: size.width,
                            padding: EdgeInsets.only(
                              left: getHorizontalSize(
                                16.00,
                              ),
                              top: getVerticalSize(
                                16.00,
                              ),
                              bottom: getVerticalSize(
                                16.00,
                              ),
                            ),
                            decoration: AppDecoration.textStylePoppinsbold124,
                            child: Text(
                              "msg_time_ending_so".tr,
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.textStylePoppinsbold124.copyWith(
                                fontSize: getFontSize(
                                  12,
                                ),
                                letterSpacing: 0.50,
                              ),
                            ),
                          ),
                          Container(
                            width: size.width,
                            padding: EdgeInsets.only(
                              left: getHorizontalSize(
                                16.00,
                              ),
                              top: getVerticalSize(
                                16.00,
                              ),
                              bottom: getVerticalSize(
                                16.00,
                              ),
                            ),
                            decoration: AppDecoration.textStylePoppinsbold125,
                            child: Text(
                              "msg_time_newly_lis".tr,
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.textStylePoppinsbold125.copyWith(
                                fontSize: getFontSize(
                                  12,
                                ),
                                letterSpacing: 0.50,
                              ),
                            ),
                          ),
                          Container(
                            width: size.width,
                            padding: EdgeInsets.only(
                              left: getHorizontalSize(
                                16.00,
                              ),
                              top: getVerticalSize(
                                16.00,
                              ),
                              bottom: getVerticalSize(
                                16.00,
                              ),
                            ),
                            decoration: AppDecoration.textStylePoppinsbold125,
                            child: Text(
                              "msg_price_shippin".tr,
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.textStylePoppinsbold125.copyWith(
                                fontSize: getFontSize(
                                  12,
                                ),
                                letterSpacing: 0.50,
                              ),
                            ),
                          ),
                          Container(
                            width: size.width,
                            padding: EdgeInsets.only(
                              left: getHorizontalSize(
                                16.00,
                              ),
                              top: getVerticalSize(
                                16.00,
                              ),
                              bottom: getVerticalSize(
                                16.00,
                              ),
                            ),
                            decoration: AppDecoration.textStylePoppinsbold125,
                            child: Text(
                              "msg_price_shippin2".tr,
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.textStylePoppinsbold125.copyWith(
                                fontSize: getFontSize(
                                  12,
                                ),
                                letterSpacing: 0.50,
                              ),
                            ),
                          ),
                          Container(
                            width: size.width,
                            padding: EdgeInsets.only(
                              left: getHorizontalSize(
                                16.00,
                              ),
                              top: getVerticalSize(
                                16.00,
                              ),
                              bottom: getVerticalSize(
                                16.00,
                              ),
                            ),
                            decoration: AppDecoration.textStylePoppinsbold125,
                            child: Text(
                              "msg_distance_neare".tr,
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.textStylePoppinsbold125.copyWith(
                                fontSize: getFontSize(
                                  12,
                                ),
                                letterSpacing: 0.50,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
