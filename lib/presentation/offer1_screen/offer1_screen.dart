import 'controller/offer1_controller.dart';
import 'package:business/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Offer1Screen extends GetWidget<Offer1Controller> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Column(children: [
              Expanded(
                  child: Container(
                      width: size.width,
                      child: SingleChildScrollView(
                          child: Container(
                              decoration:
                                  BoxDecoration(color: ColorConstant.whiteA700),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: getVerticalSize(26.00)),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Container(
                                                      width: size.width,
                                                      child: Padding(
                                                          padding: EdgeInsets.only(
                                                              left:
                                                                  getHorizontalSize(
                                                                      16.00),
                                                              right:
                                                                  getHorizontalSize(
                                                                      13.00)),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Text(
                                                                    "lbl_offer"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .textStylePoppinsbold161
                                                                        .copyWith(
                                                                            fontSize:
                                                                                getFontSize(16),
                                                                            letterSpacing: 0.08)),
                                                                GestureDetector(
                                                                    onTap: () {
                                                                      onTapImgNotificationic();
                                                                    },
                                                                    child: Container(
                                                                        height: getSize(
                                                                            24.00),
                                                                        width: getSize(
                                                                            24.00),
                                                                        child: SvgPicture.asset(
                                                                            ImageConstant
                                                                                .imgNotificationic2,
                                                                            fit:
                                                                                BoxFit.fill)))
                                                              ])))),
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Container(
                                                      width: getHorizontalSize(
                                                          343.00),
                                                      margin: EdgeInsets.only(
                                                          left: getHorizontalSize(
                                                              16.00),
                                                          top: getVerticalSize(
                                                              44.00),
                                                          right:
                                                              getHorizontalSize(
                                                                  16.00)),
                                                      padding: EdgeInsets.only(
                                                          left: getHorizontalSize(
                                                              16.00),
                                                          top: getVerticalSize(
                                                              16.00),
                                                          bottom: getVerticalSize(
                                                              16.00)),
                                                      decoration: AppDecoration
                                                          .textStylePoppinsbold162,
                                                      child: Text(
                                                          "msg_use_megsl_cup".tr,
                                                          maxLines: null,
                                                          textAlign: TextAlign.left,
                                                          style: AppStyle.textStylePoppinsbold162.copyWith(fontSize: getFontSize(16), letterSpacing: 0.50)))),
                                              Container(
                                                  height:
                                                      getVerticalSize(206.00),
                                                  width:
                                                      getHorizontalSize(343.00),
                                                  margin: EdgeInsets.only(
                                                      left: getHorizontalSize(
                                                          16.00),
                                                      top: getVerticalSize(
                                                          16.00),
                                                      right: getHorizontalSize(
                                                          16.00)),
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Image.asset(
                                                                ImageConstant
                                                                    .imgPromotionimage,
                                                                height:
                                                                    getVerticalSize(
                                                                        206.00),
                                                                width:
                                                                    getHorizontalSize(
                                                                        343.00),
                                                                fit: BoxFit
                                                                    .fill)),
                                                        Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Padding(
                                                                padding: EdgeInsets.only(
                                                                    left: getHorizontalSize(
                                                                        24.00),
                                                                    top: getVerticalSize(
                                                                        32.00),
                                                                    right: getHorizontalSize(
                                                                        24.00),
                                                                    bottom: getVerticalSize(
                                                                        32.00)),
                                                                child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Container(
                                                                          width: getHorizontalSize(
                                                                              209.00),
                                                                          child: Text(
                                                                              "msg_super_flash_sal".tr,
                                                                              maxLines: null,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.textStylePoppinsbold24.copyWith(fontSize: getFontSize(24), letterSpacing: 0.50))),
                                                                      Padding(
                                                                          padding: EdgeInsets.only(
                                                                              top: getVerticalSize(
                                                                                  29.00),
                                                                              right: getHorizontalSize(
                                                                                  10.00)),
                                                                          child: Row(
                                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                                              crossAxisAlignment: CrossAxisAlignment.center,
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Container(alignment: Alignment.center, height: getVerticalSize(41.00), width: getHorizontalSize(42.00), decoration: AppDecoration.textStylePoppinsbold16, child: Text("lbl_08".tr, textAlign: TextAlign.center, style: AppStyle.textStylePoppinsbold16.copyWith(fontSize: getFontSize(16), letterSpacing: 0.50))),
                                                                                Padding(padding: EdgeInsets.only(left: getHorizontalSize(4.00), top: getVerticalSize(10.00), bottom: getVerticalSize(10.00)), child: Text("lbl".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.textStylePoppinsbold14.copyWith(fontSize: getFontSize(14), letterSpacing: 0.07))),
                                                                                Padding(padding: EdgeInsets.only(left: getHorizontalSize(4.00)), child: Container(alignment: Alignment.center, height: getVerticalSize(41.00), width: getHorizontalSize(42.00), decoration: AppDecoration.textStylePoppinsbold16, child: Text("lbl_34".tr, textAlign: TextAlign.center, style: AppStyle.textStylePoppinsbold16.copyWith(fontSize: getFontSize(16), letterSpacing: 0.50)))),
                                                                                Padding(padding: EdgeInsets.only(left: getHorizontalSize(4.00), top: getVerticalSize(10.00), bottom: getVerticalSize(10.00)), child: Text("lbl".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.textStylePoppinsbold14.copyWith(fontSize: getFontSize(14), letterSpacing: 0.07))),
                                                                                Padding(padding: EdgeInsets.only(left: getHorizontalSize(4.00)), child: Container(alignment: Alignment.center, height: getVerticalSize(41.00), width: getHorizontalSize(42.00), decoration: AppDecoration.textStylePoppinsbold16, child: Text("lbl_52".tr, textAlign: TextAlign.center, style: AppStyle.textStylePoppinsbold16.copyWith(fontSize: getFontSize(16), letterSpacing: 0.50))))
                                                                              ]))
                                                                    ])))
                                                      ])),
                                              Container(
                                                  height:
                                                      getVerticalSize(206.00),
                                                  width:
                                                      getHorizontalSize(343.00),
                                                  margin: EdgeInsets.only(
                                                      left: getHorizontalSize(
                                                          16.00),
                                                      top: getVerticalSize(
                                                          16.00),
                                                      right: getHorizontalSize(
                                                          16.00)),
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.topCenter,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Image.asset(
                                                                ImageConstant
                                                                    .imgRecomendedprod,
                                                                height:
                                                                    getVerticalSize(
                                                                        206.00),
                                                                width:
                                                                    getHorizontalSize(
                                                                        343.00),
                                                                fit: BoxFit
                                                                    .fill)),
                                                        Align(
                                                            alignment: Alignment
                                                                .topCenter,
                                                            child: Padding(
                                                                padding: EdgeInsets.only(
                                                                    left: getHorizontalSize(
                                                                        24.00),
                                                                    top: getVerticalSize(
                                                                        32.00),
                                                                    right: getHorizontalSize(
                                                                        24.00),
                                                                    bottom: getVerticalSize(
                                                                        32.00)),
                                                                child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Container(
                                                                          width: getHorizontalSize(
                                                                              295.00),
                                                                          child: Text(
                                                                              "msg_90_off_super_m".tr,
                                                                              maxLines: null,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.textStylePoppinsbold24.copyWith(fontSize: getFontSize(24), letterSpacing: 0.50))),
                                                                      Padding(
                                                                          padding: EdgeInsets.only(
                                                                              top: getVerticalSize(
                                                                                  16.00)),
                                                                          child: Text(
                                                                              "msg_special_birthda".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.textStylePoppinsregular125.copyWith(fontSize: getFontSize(12), letterSpacing: 0.50)))
                                                                    ])))
                                                      ]))
                                            ]))
                                  ]))))),
              Container(
                  height: getVerticalSize(93.00),
                  width: size.width,
                  child: Stack(children: [
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: EdgeInsets.only(
                                top: getVerticalSize(24.00),
                                bottom: getVerticalSize(24.00)),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: getHorizontalSize(26.00),
                                                right:
                                                    getHorizontalSize(25.00)),
                                            child: Container(
                                                height: getSize(24.00),
                                                width: getSize(24.00),
                                                child: SvgPicture.asset(
                                                    ImageConstant.imgHomeicon1,
                                                    fit: BoxFit.fill))),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                                padding: EdgeInsets.only(
                                                    top: getVerticalSize(4.00)),
                                                child: Text("lbl_home".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.center,
                                                    style: AppStyle
                                                        .textStylePoppinsregular10
                                                        .copyWith(
                                                            fontSize:
                                                                getFontSize(10),
                                                            letterSpacing:
                                                                0.50))))
                                      ]),
                                  Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: getHorizontalSize(26.00),
                                                right:
                                                    getHorizontalSize(25.00)),
                                            child: Container(
                                                height: getSize(24.00),
                                                width: getSize(24.00),
                                                child: SvgPicture.asset(
                                                    ImageConstant
                                                        .imgSearchicon1,
                                                    fit: BoxFit.fill))),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                                padding: EdgeInsets.only(
                                                    top: getVerticalSize(4.00)),
                                                child: Text("lbl_explore".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.center,
                                                    style: AppStyle
                                                        .textStylePoppinsregular10
                                                        .copyWith(
                                                            fontSize:
                                                                getFontSize(10),
                                                            letterSpacing:
                                                                0.50))))
                                      ]),
                                  Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: getHorizontalSize(26.00),
                                                right:
                                                    getHorizontalSize(25.00)),
                                            child: Container(
                                                height: getSize(24.00),
                                                width: getSize(24.00),
                                                child: SvgPicture.asset(
                                                    ImageConstant.imgCarticon1,
                                                    fit: BoxFit.fill))),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                                padding: EdgeInsets.only(
                                                    top: getVerticalSize(4.00)),
                                                child: Text("lbl_cart".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.center,
                                                    style: AppStyle
                                                        .textStylePoppinsregular10
                                                        .copyWith(
                                                            fontSize:
                                                                getFontSize(10),
                                                            letterSpacing:
                                                                0.50))))
                                      ]),
                                  Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: getHorizontalSize(26.00),
                                                right:
                                                    getHorizontalSize(25.00)),
                                            child: Container(
                                                height: getSize(24.00),
                                                width: getSize(24.00),
                                                child: SvgPicture.asset(
                                                    ImageConstant.imgOffericon1,
                                                    fit: BoxFit.fill))),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                                padding: EdgeInsets.only(
                                                    top: getVerticalSize(4.00)),
                                                child: Text("lbl_offer".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.center,
                                                    style: AppStyle
                                                        .textStylePoppinsbold101
                                                        .copyWith(
                                                            fontSize:
                                                                getFontSize(10),
                                                            letterSpacing:
                                                                0.50))))
                                      ]),
                                  Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: getHorizontalSize(26.00),
                                                right:
                                                    getHorizontalSize(25.00)),
                                            child: Container(
                                                height: getSize(24.00),
                                                width: getSize(24.00),
                                                child: SvgPicture.asset(
                                                    ImageConstant
                                                        .imgSystemicon24p,
                                                    fit: BoxFit.fill))),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                                padding: EdgeInsets.only(
                                                    top: getVerticalSize(4.00)),
                                                child: Text("lbl_account".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.center,
                                                    style: AppStyle
                                                        .textStylePoppinsregular10
                                                        .copyWith(
                                                            fontSize:
                                                                getFontSize(10),
                                                            letterSpacing:
                                                                0.50))))
                                      ])
                                ])))
                  ]))
            ])));
  }

  onTapImgNotificationic() {
    Get.toNamed(AppRoutes.notificationScreen);
  }
}
