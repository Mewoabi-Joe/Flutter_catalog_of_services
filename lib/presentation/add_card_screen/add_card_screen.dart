import 'controller/add_card_controller.dart';
import 'package:business/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AddCardScreen extends GetWidget<AddCardController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        decoration:
                            BoxDecoration(color: ColorConstant.whiteA700),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: EdgeInsets.only(
                                          top: getVerticalSize(26.00),
                                          bottom: getVerticalSize(20.00)),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Container(
                                                    width: size.width,
                                                    child: Padding(
                                                        padding: EdgeInsets.only(
                                                            left:
                                                                getHorizontalSize(
                                                                    16.00),
                                                            right:
                                                                getHorizontalSize(
                                                                    241.00)),
                                                        child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            children: [
                                                              Container(
                                                                  height:
                                                                      getSize(
                                                                          24.00),
                                                                  width: getSize(
                                                                      24.00),
                                                                  child: SvgPicture.asset(
                                                                      ImageConstant
                                                                          .imgLefticon,
                                                                      fit: BoxFit
                                                                          .fill)),
                                                              Padding(
                                                                  padding: EdgeInsets.only(
                                                                      left: getHorizontalSize(
                                                                          12.00)),
                                                                  child: Text(
                                                                      "lbl_add_card"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle.textStylePoppinsbold161.copyWith(
                                                                          fontSize: getFontSize(
                                                                              16),
                                                                          letterSpacing:
                                                                              0.50)))
                                                            ])))),
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        left: getHorizontalSize(
                                                            16.00),
                                                        top: getVerticalSize(
                                                            44.00),
                                                        right:
                                                            getHorizontalSize(
                                                                256.00)),
                                                    child: Text(
                                                        "lbl_card_number".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .textStylePoppinsbold141
                                                            .copyWith(
                                                                fontSize:
                                                                    getFontSize(
                                                                        14),
                                                                letterSpacing:
                                                                    0.50)))),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    left: getHorizontalSize(
                                                        16.00),
                                                    top: getVerticalSize(12.00),
                                                    right: getHorizontalSize(
                                                        16.00)),
                                                child: Container(
                                                    height:
                                                        getVerticalSize(48.00),
                                                    width: getHorizontalSize(
                                                        343.00),
                                                    child: TextFormField(
                                                        controller: controller
                                                            .group105Controller,
                                                        decoration: InputDecoration(
                                                            hintText:
                                                                "msg_enter_card_numb"
                                                                    .tr,
                                                            hintStyle: AppStyle
                                                                .textStylePoppinsregular12
                                                                .copyWith(
                                                                    fontSize:
                                                                        getFontSize(
                                                                            12.0),
                                                                    color: ColorConstant.bluegray300),
                                                            enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(getHorizontalSize(5.00)), borderSide: BorderSide(color: ColorConstant.blue50, width: 1)),
                                                            focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(getHorizontalSize(5.00)), borderSide: BorderSide(color: ColorConstant.blue50, width: 1)),
                                                            filled: true,
                                                            fillColor: ColorConstant.whiteA700,
                                                            isDense: true,
                                                            contentPadding: EdgeInsets.only(left: getHorizontalSize(16.00), top: getVerticalSize(17.80), bottom: getVerticalSize(17.80))),
                                                        style: TextStyle(color: ColorConstant.bluegray300, fontSize: getFontSize(12.0), fontFamily: 'Poppins', fontWeight: FontWeight.w400)))),
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        left: getHorizontalSize(
                                                            16.00),
                                                        top: getVerticalSize(
                                                            24.00),
                                                        right: getHorizontalSize(
                                                            115.85)),
                                                    child: Text(
                                                        "lbl_expiration_date"
                                                            .tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .textStylePoppinsbold141
                                                            .copyWith(
                                                                fontSize:
                                                                    getFontSize(
                                                                        14),
                                                                letterSpacing:
                                                                    0.50)))),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    left: getHorizontalSize(
                                                        16.00),
                                                    top: getVerticalSize(12.00),
                                                    right: getHorizontalSize(
                                                        19.00)),
                                                child: Container(
                                                    height:
                                                        getVerticalSize(48.00),
                                                    width: getHorizontalSize(
                                                        340.00),
                                                    child: TextFormField(
                                                        controller: controller
                                                            .group106Controller,
                                                        decoration: InputDecoration(
                                                            hintText:
                                                                "lbl_expiration_date"
                                                                    .tr,
                                                            hintStyle: AppStyle
                                                                .textStylePoppinsregular12
                                                                .copyWith(
                                                                    fontSize:
                                                                        getFontSize(
                                                                            12.0),
                                                                    color: ColorConstant.bluegray300),
                                                            enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(getHorizontalSize(5.00)), borderSide: BorderSide(color: ColorConstant.blue50, width: 1)),
                                                            focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(getHorizontalSize(5.00)), borderSide: BorderSide(color: ColorConstant.blue50, width: 1)),
                                                            filled: true,
                                                            fillColor: ColorConstant.whiteA700,
                                                            isDense: true,
                                                            contentPadding: EdgeInsets.only(left: getHorizontalSize(16.00), top: getVerticalSize(17.80), bottom: getVerticalSize(17.80))),
                                                        style: TextStyle(color: ColorConstant.bluegray300, fontSize: getFontSize(12.0), fontFamily: 'Poppins', fontWeight: FontWeight.w400)))),
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        left: getHorizontalSize(
                                                            16.00),
                                                        top: getVerticalSize(
                                                            29.00),
                                                        right:
                                                            getHorizontalSize(
                                                                138.52)),
                                                    child: Text(
                                                        "lbl_security_code".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .textStylePoppinsbold141
                                                            .copyWith(
                                                                fontSize:
                                                                    getFontSize(
                                                                        14),
                                                                letterSpacing:
                                                                    0.50)))),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    left: getHorizontalSize(
                                                        16.00),
                                                    top: getVerticalSize(12.00),
                                                    right: getHorizontalSize(
                                                        19.00)),
                                                child: Container(
                                                    height:
                                                        getVerticalSize(48.00),
                                                    width: getHorizontalSize(
                                                        340.00),
                                                    child: TextFormField(
                                                        controller: controller
                                                            .group107Controller,
                                                        decoration: InputDecoration(
                                                            hintText:
                                                                "lbl_security_code"
                                                                    .tr,
                                                            hintStyle: AppStyle
                                                                .textStylePoppinsregular12
                                                                .copyWith(
                                                                    fontSize:
                                                                        getFontSize(
                                                                            12.0),
                                                                    color: ColorConstant.bluegray300),
                                                            enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(getHorizontalSize(5.00)), borderSide: BorderSide(color: ColorConstant.blue50, width: 1)),
                                                            focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(getHorizontalSize(5.00)), borderSide: BorderSide(color: ColorConstant.blue50, width: 1)),
                                                            filled: true,
                                                            fillColor: ColorConstant.whiteA700,
                                                            isDense: true,
                                                            contentPadding: EdgeInsets.only(left: getHorizontalSize(16.00), top: getVerticalSize(17.80), bottom: getVerticalSize(17.80))),
                                                        style: TextStyle(color: ColorConstant.bluegray300, fontSize: getFontSize(12.0), fontFamily: 'Poppins', fontWeight: FontWeight.w400)))),
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        left: getHorizontalSize(
                                                            16.00),
                                                        top: getVerticalSize(
                                                            24.00),
                                                        right:
                                                            getHorizontalSize(
                                                                267.00)),
                                                    child: Text(
                                                        "lbl_card_holder2".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .textStylePoppinsbold141
                                                            .copyWith(
                                                                fontSize:
                                                                    getFontSize(
                                                                        14),
                                                                letterSpacing:
                                                                    0.50)))),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    left: getHorizontalSize(
                                                        16.00),
                                                    top: getVerticalSize(12.00),
                                                    right: getHorizontalSize(
                                                        16.00)),
                                                child: Container(
                                                    height:
                                                        getVerticalSize(48.00),
                                                    width: getHorizontalSize(
                                                        343.00),
                                                    child: TextFormField(
                                                        controller: controller
                                                            .group108Controller,
                                                        decoration: InputDecoration(
                                                            hintText:
                                                                "msg_enter_card_numb"
                                                                    .tr,
                                                            hintStyle: AppStyle
                                                                .textStylePoppinsregular12
                                                                .copyWith(
                                                                    fontSize:
                                                                        getFontSize(
                                                                            12.0),
                                                                    color: ColorConstant.bluegray300),
                                                            enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(getHorizontalSize(5.00)), borderSide: BorderSide(color: ColorConstant.blue50, width: 1)),
                                                            focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(getHorizontalSize(5.00)), borderSide: BorderSide(color: ColorConstant.blue50, width: 1)),
                                                            filled: true,
                                                            fillColor: ColorConstant.whiteA700,
                                                            isDense: true,
                                                            contentPadding: EdgeInsets.only(left: getHorizontalSize(16.00), top: getVerticalSize(17.80), bottom: getVerticalSize(17.80))),
                                                        style: TextStyle(color: ColorConstant.bluegray300, fontSize: getFontSize(12.0), fontFamily: 'Poppins', fontWeight: FontWeight.w400)))),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    left: getHorizontalSize(
                                                        16.00),
                                                    top:
                                                        getVerticalSize(166.00),
                                                    right: getHorizontalSize(
                                                        16.00)),
                                                child: GestureDetector(
                                                    onTap: () {
                                                      onTapBtnAddcard();
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
                                                            "lbl_add_card".tr,
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: AppStyle
                                                                .textStylePoppinsbold146
                                                                .copyWith(
                                                                    fontSize:
                                                                        getFontSize(
                                                                            14),
                                                                    letterSpacing:
                                                                        0.50)))))
                                          ])))
                            ]))))));
  }

  onTapBtnAddcard() {
    Get.toNamed(AppRoutes.creditCardAndDebitScreen);
  }
}
