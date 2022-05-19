import '../cart_screen/widgets/cart_item_widget.dart';
import 'controller/cart_controller.dart';
import 'models/cart_item_model.dart';
import 'package:business/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CartScreen extends GetWidget<CartController> {
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
                                                                    "lbl_your_cart"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle.textStylePoppinsbold161.copyWith(
                                                                        fontSize:
                                                                            getFontSize(
                                                                                16),
                                                                        letterSpacing:
                                                                            0.08)),
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
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: getHorizontalSize(
                                                          15.00),
                                                      top: getVerticalSize(
                                                          24.00),
                                                      right: getHorizontalSize(
                                                          15.00)),
                                                  child: Obx(() =>
                                                      ListView.builder(
                                                          physics:
                                                              BouncingScrollPhysics(),
                                                          shrinkWrap: true,
                                                          itemCount: controller
                                                              .cartModelObj
                                                              .value
                                                              .cartItemList
                                                              .length,
                                                          itemBuilder:
                                                              (context, index) {
                                                            CartItemModel
                                                                model =
                                                                controller
                                                                    .cartModelObj
                                                                    .value
                                                                    .cartItemList[index];
                                                            return CartItemWidget(
                                                                model);
                                                          }))),
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Padding(
                                                      padding: EdgeInsets.only(
                                                          top: getVerticalSize(
                                                              52.00)),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                                padding: EdgeInsets.only(
                                                                    left: getHorizontalSize(
                                                                        16.00)),
                                                                child: Container(
                                                                    height:
                                                                        getVerticalSize(
                                                                            56.00),
                                                                    width: getHorizontalSize(
                                                                        256.00),
                                                                    child: TextFormField(
                                                                        controller:
                                                                            controller
                                                                                .coponcodefielController,
                                                                        decoration: InputDecoration(
                                                                            hintText:
                                                                                "msg_enter_cupon_cod".tr,
                                                                            hintStyle: AppStyle.textStylePoppinsregular12.copyWith(fontSize: getFontSize(12.0), color: ColorConstant.bluegray300),
                                                                            enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(getHorizontalSize(5.00)), borderSide: BorderSide(color: ColorConstant.blue50, width: 1)),
                                                                            focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(getHorizontalSize(5.00)), borderSide: BorderSide(color: ColorConstant.blue50, width: 1)),
                                                                            filled: true,
                                                                            fillColor: ColorConstant.whiteA700,
                                                                            isDense: true,
                                                                            contentPadding: EdgeInsets.only(left: getHorizontalSize(16.09), top: getVerticalSize(21.80), bottom: getVerticalSize(21.80))),
                                                                        style: TextStyle(color: ColorConstant.bluegray300, fontSize: getFontSize(12.0), fontFamily: 'Poppins', fontWeight: FontWeight.w400)))),
                                                            Padding(
                                                                padding: EdgeInsets.only(
                                                                    right: getHorizontalSize(
                                                                        16.00)),
                                                                child: Container(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    height:
                                                                        getVerticalSize(
                                                                            56.00),
                                                                    width: getHorizontalSize(
                                                                        87.00),
                                                                    decoration:
                                                                        AppDecoration
                                                                            .textStylePoppinsbold128,
                                                                    child: Text(
                                                                        "lbl_apply"
                                                                            .tr,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .center,
                                                                        style: AppStyle.textStylePoppinsbold128.copyWith(
                                                                            fontSize: getFontSize(12),
                                                                            letterSpacing: 0.50))))
                                                          ]))),
                                              Container(
                                                  width: double.infinity,
                                                  margin: EdgeInsets.only(
                                                      left: getHorizontalSize(
                                                          15.00),
                                                      top: getVerticalSize(
                                                          16.00),
                                                      right: getHorizontalSize(
                                                          15.00)),
                                                  decoration: BoxDecoration(
                                                      color: ColorConstant
                                                          .whiteA700,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  5.00)),
                                                      border: Border.all(
                                                          color: ColorConstant
                                                              .blue50,
                                                          width: getHorizontalSize(
                                                              1.00))),
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.center,
                                                      children: [
                                                        Padding(
                                                            padding: EdgeInsets.only(
                                                                left:
                                                                    getHorizontalSize(
                                                                        16.00),
                                                                top:
                                                                    getVerticalSize(
                                                                        16.00),
                                                                right:
                                                                    getHorizontalSize(
                                                                        16.00)),
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
                                                                      "lbl_items_3"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle.textStylePoppinsregular12.copyWith(
                                                                          fontSize: getFontSize(
                                                                              12),
                                                                          letterSpacing:
                                                                              0.50)),
                                                                  Text(
                                                                      "lbl_598_86"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .right,
                                                                      style: AppStyle.textStylePoppinsregular121.copyWith(
                                                                          fontSize: getFontSize(
                                                                              12),
                                                                          letterSpacing:
                                                                              0.50))
                                                                ])),
                                                        Padding(
                                                            padding: EdgeInsets.only(
                                                                left:
                                                                    getHorizontalSize(
                                                                        16.00),
                                                                top:
                                                                    getVerticalSize(
                                                                        12.00),
                                                                right:
                                                                    getHorizontalSize(
                                                                        16.00)),
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
                                                                      "lbl_shipping"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle.textStylePoppinsregular12.copyWith(
                                                                          fontSize: getFontSize(
                                                                              12),
                                                                          letterSpacing:
                                                                              0.50)),
                                                                  Text(
                                                                      "lbl_40_00"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .right,
                                                                      style: AppStyle.textStylePoppinsregular121.copyWith(
                                                                          fontSize: getFontSize(
                                                                              12),
                                                                          letterSpacing:
                                                                              0.50))
                                                                ])),
                                                        Padding(
                                                            padding: EdgeInsets.only(
                                                                left:
                                                                    getHorizontalSize(
                                                                        16.00),
                                                                top:
                                                                    getVerticalSize(
                                                                        12.00),
                                                                right:
                                                                    getHorizontalSize(
                                                                        16.00)),
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
                                                                      "lbl_import_charges"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle.textStylePoppinsregular12.copyWith(
                                                                          fontSize: getFontSize(
                                                                              12),
                                                                          letterSpacing:
                                                                              0.50)),
                                                                  Text(
                                                                      "lbl_128_00"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .right,
                                                                      style: AppStyle.textStylePoppinsregular121.copyWith(
                                                                          fontSize: getFontSize(
                                                                              12),
                                                                          letterSpacing:
                                                                              0.50))
                                                                ])),
                                                        Container(
                                                            height:
                                                                getVerticalSize(
                                                                    1.00),
                                                            width:
                                                                getHorizontalSize(
                                                                    311.00),
                                                            margin: EdgeInsets.only(
                                                                left:
                                                                    getHorizontalSize(
                                                                        16.00),
                                                                top:
                                                                    getVerticalSize(
                                                                        12.00),
                                                                right:
                                                                    getHorizontalSize(
                                                                        16.00)),
                                                            decoration:
                                                                BoxDecoration(
                                                                    color: ColorConstant
                                                                        .blue50)),
                                                        Padding(
                                                            padding: EdgeInsets.only(
                                                                left:
                                                                    getHorizontalSize(
                                                                        16.00),
                                                                top: getVerticalSize(
                                                                    11.00),
                                                                right:
                                                                    getHorizontalSize(
                                                                        16.00),
                                                                bottom:
                                                                    getVerticalSize(
                                                                        16.00)),
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
                                                                      "lbl_total_price"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle.textStylePoppinsbold12.copyWith(
                                                                          fontSize: getFontSize(
                                                                              12),
                                                                          letterSpacing:
                                                                              0.50)),
                                                                  Text(
                                                                      "lbl_766_86"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .right,
                                                                      style: AppStyle.textStylePoppinsbold121.copyWith(
                                                                          fontSize: getFontSize(
                                                                              12),
                                                                          letterSpacing:
                                                                              0.50))
                                                                ]))
                                                      ])),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: getHorizontalSize(
                                                          15.00),
                                                      top: getVerticalSize(
                                                          16.00),
                                                      right: getHorizontalSize(
                                                          15.00)),
                                                  child: GestureDetector(
                                                      onTap: () {
                                                        onTapBtnCheckout();
                                                      },
                                                      child: Container(
                                                          alignment:
                                                              Alignment.center,
                                                          height: getVerticalSize(
                                                              57.00),
                                                          width: getHorizontalSize(
                                                              343.00),
                                                          decoration: AppDecoration
                                                              .textStylePoppinsbold146,
                                                          child: Text(
                                                              "lbl_check_out"
                                                                  .tr,
                                                              textAlign: TextAlign
                                                                  .center,
                                                              style: AppStyle
                                                                  .textStylePoppinsbold146
                                                                  .copyWith(
                                                                      fontSize:
                                                                          getFontSize(14),
                                                                      letterSpacing: 0.50)))))
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
                                                    ImageConstant.imgCarticon2,
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
                                                    ImageConstant.imgOffericon2,
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
                                                    ImageConstant.imgUsericon2,
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

  onTapBtnCheckout() {
    Get.toNamed(AppRoutes.shipToScreen);
  }
}
