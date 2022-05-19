import 'controller/search_controller.dart';
import 'package:business/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchScreen extends GetWidget<SearchController> {
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
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: EdgeInsets.only(
                                          top: getVerticalSize(17.00),
                                          bottom: getVerticalSize(20.00)),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Container(
                                                width: size.width,
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        left: getHorizontalSize(
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
                                                            MainAxisSize.max,
                                                        children: [
                                                          Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      44.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      291.00),
                                                              child: TextFormField(
                                                                  controller:
                                                                      controller
                                                                          .group45Controller,
                                                                  decoration: InputDecoration(
                                                                      hintText:
                                                                          "lbl_nike_air_max"
                                                                              .tr,
                                                                      hintStyle: AppStyle.textStylePoppinsbold12.copyWith(
                                                                          fontSize: getFontSize(
                                                                              12.0),
                                                                          color: ColorConstant
                                                                              .indigo900),
                                                                      enabledBorder: OutlineInputBorder(
                                                                          borderRadius:
                                                                              BorderRadius.circular(getHorizontalSize(5.00)),
                                                                          borderSide: BorderSide(color: ColorConstant.lightBlueA200, width: 1)),
                                                                      focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(getHorizontalSize(5.00)), borderSide: BorderSide(color: ColorConstant.lightBlueA200, width: 1)),
                                                                      prefixIcon: Padding(padding: EdgeInsets.only(left: getHorizontalSize(16.00), right: getHorizontalSize(10.00)), child: Container(height: getSize(16.00), width: getSize(16.00), child: SvgPicture.asset(ImageConstant.imgSearchicon, fit: BoxFit.contain))),
                                                                      prefixIconConstraints: BoxConstraints(minWidth: getSize(16.00), minHeight: getSize(16.00)),
                                                                      suffixIcon: Padding(padding: EdgeInsets.only(left: getHorizontalSize(10.00), right: getHorizontalSize(16.00)), child: Container(height: getSize(20.00), width: getSize(20.00), child: SvgPicture.asset(ImageConstant.imgClearIcon, fit: BoxFit.contain))),
                                                                      suffixIconConstraints: BoxConstraints(minWidth: getSize(20.00), minHeight: getSize(20.00)),
                                                                      isDense: true,
                                                                      contentPadding: EdgeInsets.only(top: getVerticalSize(15.00), bottom: getVerticalSize(19.00))),
                                                                  style: TextStyle(color: ColorConstant.indigo900, fontSize: getFontSize(12.0), fontFamily: 'Poppins', fontWeight: FontWeight.w700))),
                                                          Padding(
                                                              padding: EdgeInsets.only(
                                                                  top: getVerticalSize(
                                                                      10.00),
                                                                  bottom:
                                                                      getVerticalSize(
                                                                          10.00)),
                                                              child: Container(
                                                                  height:
                                                                      getSize(
                                                                          24.00),
                                                                  width: getSize(
                                                                      24.00),
                                                                  child: SvgPicture.asset(
                                                                      ImageConstant
                                                                          .imgMicicon,
                                                                      fit: BoxFit
                                                                          .fill)))
                                                        ]))),
                                            Container(
                                                height: getVerticalSize(1.00),
                                                width:
                                                    getHorizontalSize(369.00),
                                                margin: EdgeInsets.only(
                                                    left:
                                                        getHorizontalSize(6.00),
                                                    top:
                                                        getVerticalSize(17.00)),
                                                decoration: BoxDecoration(
                                                    color:
                                                        ColorConstant.blue50)),
                                            GestureDetector(
                                                onTap: () {
                                                  onTapTxtNikeairmax273();
                                                },
                                                child: Container(
                                                    width: size.width,
                                                    margin: EdgeInsets.only(
                                                        top: getVerticalSize(
                                                            9.00)),
                                                    padding: EdgeInsets.only(
                                                        left: getHorizontalSize(
                                                            16.00),
                                                        top: getVerticalSize(
                                                            16.00),
                                                        bottom: getVerticalSize(
                                                            16.00)),
                                                    decoration: AppDecoration
                                                        .textStylePoppinsregular122,
                                                    child: Text(
                                                        "msg_nike_air_max_273"
                                                            .tr,
                                                        maxLines: null,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .textStylePoppinsregular122
                                                            .copyWith(
                                                                fontSize: getFontSize(12),
                                                                letterSpacing: 0.50)))),
                                            Container(
                                                width: size.width,
                                                padding: EdgeInsets.only(
                                                    left: getHorizontalSize(
                                                        16.00),
                                                    top: getVerticalSize(16.00),
                                                    bottom:
                                                        getVerticalSize(16.00)),
                                                decoration: AppDecoration
                                                    .textStylePoppinsregular122,
                                                child: Text(
                                                    "msg_nike_air_vaporm".tr,
                                                    maxLines: null,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .textStylePoppinsregular122
                                                        .copyWith(
                                                            fontSize:
                                                                getFontSize(12),
                                                            letterSpacing:
                                                                0.50))),
                                            Container(
                                                width: size.width,
                                                padding: EdgeInsets.only(
                                                    left: getHorizontalSize(
                                                        16.00),
                                                    top: getVerticalSize(16.00),
                                                    bottom:
                                                        getVerticalSize(16.00)),
                                                decoration: AppDecoration
                                                    .textStylePoppinsregular122,
                                                child: Text(
                                                    "msg_nike_air_max_273".tr,
                                                    maxLines: null,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .textStylePoppinsregular122
                                                        .copyWith(
                                                            fontSize:
                                                                getFontSize(12),
                                                            letterSpacing:
                                                                0.50))),
                                            Container(
                                                width: size.width,
                                                padding: EdgeInsets.only(
                                                    left: getHorizontalSize(
                                                        16.00),
                                                    top: getVerticalSize(16.00),
                                                    bottom:
                                                        getVerticalSize(16.00)),
                                                decoration: AppDecoration
                                                    .textStylePoppinsregular122,
                                                child: Text(
                                                    "msg_nike_air_max_274".tr,
                                                    maxLines: null,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .textStylePoppinsregular122
                                                        .copyWith(
                                                            fontSize:
                                                                getFontSize(12),
                                                            letterSpacing:
                                                                0.50))),
                                            Container(
                                                width: size.width,
                                                padding: EdgeInsets.only(
                                                    left: getHorizontalSize(
                                                        16.00),
                                                    top: getVerticalSize(16.00),
                                                    bottom:
                                                        getVerticalSize(16.00)),
                                                decoration: AppDecoration
                                                    .textStylePoppinsregular122,
                                                child: Text(
                                                    "msg_nike_air_vaporm2".tr,
                                                    maxLines: null,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .textStylePoppinsregular122
                                                        .copyWith(
                                                            fontSize:
                                                                getFontSize(12),
                                                            letterSpacing:
                                                                0.50))),
                                            Container(
                                                width: size.width,
                                                padding: EdgeInsets.only(
                                                    left: getHorizontalSize(
                                                        16.00),
                                                    top: getVerticalSize(16.00),
                                                    bottom:
                                                        getVerticalSize(16.00)),
                                                decoration: AppDecoration
                                                    .textStylePoppinsregular122,
                                                child: Text(
                                                    "msg_nike_air_max_97".tr,
                                                    maxLines: null,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .textStylePoppinsregular122
                                                        .copyWith(
                                                            fontSize:
                                                                getFontSize(12),
                                                            letterSpacing:
                                                                0.50)))
                                          ])))
                            ]))))));
  }

  onTapTxtNikeairmax273() {
    Get.toNamed(AppRoutes.searchResultScreen);
  }
}
