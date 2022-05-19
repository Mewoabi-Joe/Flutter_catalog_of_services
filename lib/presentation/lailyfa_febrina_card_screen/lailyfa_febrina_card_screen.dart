import 'controller/lailyfa_febrina_card_controller.dart';
import 'package:business/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LailyfaFebrinaCardScreen extends GetWidget<LailyfaFebrinaCardController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                decoration: BoxDecoration(color: ColorConstant.whiteA700),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          width: size.width,
                          margin: EdgeInsets.only(top: getVerticalSize(33.59)),
                          child: Padding(
                              padding: EdgeInsets.only(
                                  left: getHorizontalSize(16.00),
                                  right: getHorizontalSize(148.00)),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                        height: getVerticalSize(26.60),
                                        width: getHorizontalSize(24.00),
                                        child: SvgPicture.asset(
                                            ImageConstant.imgLefticon3,
                                            fit: BoxFit.fill)),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: getHorizontalSize(12.00)),
                                        child: Text("msg_lailyfa_febrina".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .textStylePoppinsbold161
                                                .copyWith(
                                                    fontSize: getFontSize(16),
                                                    letterSpacing: 0.50)))
                                  ]))),
                      Expanded(
                          child: SingleChildScrollView(
                              padding: EdgeInsets.only(
                                  top: getVerticalSize(33.81),
                                  bottom: getVerticalSize(20.00)),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                            width: double.infinity,
                                            margin: EdgeInsets.only(
                                                left: getHorizontalSize(16.00),
                                                right:
                                                    getHorizontalSize(16.00)),
                                            decoration: BoxDecoration(
                                                color:
                                                    ColorConstant.lightBlueA200,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        getHorizontalSize(
                                                            5.00))),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left:
                                                              getHorizontalSize(
                                                                  24.00),
                                                          top: getVerticalSize(
                                                              24.00),
                                                          right:
                                                              getHorizontalSize(
                                                                  24.00)),
                                                      child: Container(
                                                          height:
                                                              getVerticalSize(
                                                                  22.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  36.00),
                                                          child: SvgPicture.asset(
                                                              ImageConstant
                                                                  .imgCreditcardlog,
                                                              fit: BoxFit
                                                                  .fill))),
                                                  Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Padding(
                                                          padding: EdgeInsets.only(
                                                              left:
                                                                  getHorizontalSize(
                                                                      21.00),
                                                              top: getVerticalSize(
                                                                  31.00),
                                                              right:
                                                                  getHorizontalSize(
                                                                      21.00)),
                                                          child: Text(
                                                              "msg_6326_9124"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign: TextAlign
                                                                  .center,
                                                              style: AppStyle
                                                                  .textStylePoppinsbold24
                                                                  .copyWith(
                                                                      fontSize: getFontSize(24),
                                                                      letterSpacing: 0.50)))),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          top: getVerticalSize(
                                                              17.00)),
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
                                                                        21.00),
                                                                    top: getVerticalSize(
                                                                        2.00)),
                                                                child: Text(
                                                                    "lbl_card_holder"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle.textStylePoppinsregular102.copyWith(
                                                                        fontSize:
                                                                            getFontSize(
                                                                                10),
                                                                        letterSpacing:
                                                                            0.50))),
                                                            Padding(
                                                                padding: EdgeInsets.only(
                                                                    left: getHorizontalSize(
                                                                        37.00),
                                                                    right: getHorizontalSize(
                                                                        153.00),
                                                                    bottom:
                                                                        getVerticalSize(
                                                                            2.00)),
                                                                child: Text(
                                                                    "lbl_card_save"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle.textStylePoppinsregular102.copyWith(
                                                                        fontSize:
                                                                            getFontSize(
                                                                                10),
                                                                        letterSpacing:
                                                                            0.50)))
                                                          ])),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          top: getVerticalSize(
                                                              2.00),
                                                          bottom:
                                                              getVerticalSize(
                                                                  24.00)),
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
                                                                        21.00),
                                                                    top: getVerticalSize(
                                                                        2.00)),
                                                                child: Text(
                                                                    "lbl_lailyfa_febrina"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: AppStyle
                                                                        .textStylePoppinsbold103
                                                                        .copyWith(
                                                                            fontSize:
                                                                                getFontSize(10),
                                                                            letterSpacing: 0.50))),
                                                            Padding(
                                                                padding: EdgeInsets.only(
                                                                    left: getHorizontalSize(
                                                                        32.00),
                                                                    right: getHorizontalSize(
                                                                        175.00),
                                                                    bottom:
                                                                        getVerticalSize(
                                                                            2.00)),
                                                                child: Text(
                                                                    "lbl_06_24"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: AppStyle
                                                                        .textStylePoppinsbold103
                                                                        .copyWith(
                                                                            fontSize:
                                                                                getFontSize(10),
                                                                            letterSpacing: 0.50)))
                                                          ]))
                                                ]))),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: getHorizontalSize(18.00),
                                            top: getVerticalSize(24.00),
                                            right: getHorizontalSize(18.00)),
                                        child: Text("lbl_card_number".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .textStylePoppinsbold141
                                                .copyWith(
                                                    fontSize: getFontSize(14),
                                                    letterSpacing: 0.50))),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: getHorizontalSize(18.00),
                                            top: getVerticalSize(12.00),
                                            right: getHorizontalSize(14.00)),
                                        child: Container(
                                            height: getVerticalSize(48.00),
                                            width: getHorizontalSize(343.00),
                                            child: TextFormField(
                                                controller: controller
                                                    .group109Controller,
                                                decoration: InputDecoration(
                                                    hintText:
                                                        "msg_1231_2312_3".tr,
                                                    hintStyle: AppStyle
                                                        .textStylePoppinsbold122
                                                        .copyWith(
                                                            fontSize: getFontSize(
                                                                12.0),
                                                            color: ColorConstant
                                                                .bluegray300),
                                                    enabledBorder: OutlineInputBorder(
                                                        borderRadius: BorderRadius.circular(
                                                            getHorizontalSize(5.00)),
                                                        borderSide: BorderSide(color: ColorConstant.blue50, width: 1)),
                                                    focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(getHorizontalSize(5.00)), borderSide: BorderSide(color: ColorConstant.blue50, width: 1)),
                                                    filled: true,
                                                    fillColor: ColorConstant.whiteA700,
                                                    isDense: true,
                                                    contentPadding: EdgeInsets.only(left: getHorizontalSize(16.00), top: getVerticalSize(17.80), bottom: getVerticalSize(17.80))),
                                                style: TextStyle(color: ColorConstant.bluegray300, fontSize: getFontSize(12.0), fontFamily: 'Poppins', fontWeight: FontWeight.w700)))),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: getHorizontalSize(18.00),
                                            top: getVerticalSize(24.00),
                                            right: getHorizontalSize(18.00)),
                                        child: Text("lbl_expiration_date".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .textStylePoppinsbold141
                                                .copyWith(
                                                    fontSize: getFontSize(14),
                                                    letterSpacing: 0.50))),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: getHorizontalSize(18.00),
                                            top: getVerticalSize(12.00),
                                            right: getHorizontalSize(14.00)),
                                        child: Container(
                                            height: getVerticalSize(48.00),
                                            width: getHorizontalSize(343.00),
                                            child: TextFormField(
                                                controller: controller
                                                    .group110Controller,
                                                decoration: InputDecoration(
                                                    hintText: "lbl_12_12".tr,
                                                    hintStyle: AppStyle
                                                        .textStylePoppinsbold122
                                                        .copyWith(
                                                            fontSize: getFontSize(
                                                                12.0),
                                                            color: ColorConstant
                                                                .bluegray300),
                                                    enabledBorder: OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                                getHorizontalSize(5.00)),
                                                        borderSide: BorderSide(color: ColorConstant.blue50, width: 1)),
                                                    focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(getHorizontalSize(5.00)), borderSide: BorderSide(color: ColorConstant.blue50, width: 1)),
                                                    filled: true,
                                                    fillColor: ColorConstant.whiteA700,
                                                    isDense: true,
                                                    contentPadding: EdgeInsets.only(left: getHorizontalSize(16.00), top: getVerticalSize(17.80), bottom: getVerticalSize(17.80))),
                                                style: TextStyle(color: ColorConstant.bluegray300, fontSize: getFontSize(12.0), fontFamily: 'Poppins', fontWeight: FontWeight.w700)))),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: getHorizontalSize(16.00),
                                            top: getVerticalSize(29.00),
                                            right: getHorizontalSize(16.00)),
                                        child: Text("lbl_security_code".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .textStylePoppinsbold141
                                                .copyWith(
                                                    fontSize: getFontSize(14),
                                                    letterSpacing: 0.50))),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: getHorizontalSize(16.00),
                                            top: getVerticalSize(12.00),
                                            right: getHorizontalSize(14.00)),
                                        child: Container(
                                            height: getVerticalSize(48.00),
                                            width: getHorizontalSize(345.00),
                                            child: TextFormField(
                                                controller: controller
                                                    .zipcodeController,
                                                decoration: InputDecoration(
                                                    hintText: "lbl_1219".tr,
                                                    hintStyle: AppStyle
                                                        .textStylePoppinsbold122
                                                        .copyWith(
                                                            fontSize:
                                                                getFontSize(
                                                                    12.0),
                                                            color: ColorConstant
                                                                .bluegray300),
                                                    enabledBorder: OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                                getHorizontalSize(5.00)),
                                                        borderSide: BorderSide(color: ColorConstant.blue50, width: 1)),
                                                    focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(getHorizontalSize(5.00)), borderSide: BorderSide(color: ColorConstant.blue50, width: 1)),
                                                    filled: true,
                                                    fillColor: ColorConstant.whiteA700,
                                                    isDense: true,
                                                    contentPadding: EdgeInsets.only(left: getHorizontalSize(16.00), top: getVerticalSize(17.80), bottom: getVerticalSize(17.80))),
                                                style: TextStyle(color: ColorConstant.bluegray300, fontSize: getFontSize(12.0), fontFamily: 'Poppins', fontWeight: FontWeight.w700)))),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: getHorizontalSize(18.00),
                                            top: getVerticalSize(24.00),
                                            right: getHorizontalSize(18.00)),
                                        child: Text("lbl_card_holder2".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .textStylePoppinsbold141
                                                .copyWith(
                                                    fontSize: getFontSize(14),
                                                    letterSpacing: 0.50))),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: getHorizontalSize(18.00),
                                            top: getVerticalSize(12.00),
                                            right: getHorizontalSize(14.00)),
                                        child: Container(
                                            height: getVerticalSize(48.00),
                                            width: getHorizontalSize(343.00),
                                            child: TextFormField(
                                                controller: controller
                                                    .group112Controller,
                                                decoration: InputDecoration(
                                                    hintText:
                                                        "lbl_lailyfa_febrina"
                                                            .tr,
                                                    hintStyle: AppStyle
                                                        .textStylePoppinsbold122
                                                        .copyWith(
                                                            fontSize:
                                                                getFontSize(
                                                                    12.0),
                                                            color: ColorConstant
                                                                .bluegray300),
                                                    enabledBorder: OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius.circular(getHorizontalSize(5.00)),
                                                        borderSide: BorderSide(color: ColorConstant.blue50, width: 1)),
                                                    focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(getHorizontalSize(5.00)), borderSide: BorderSide(color: ColorConstant.blue50, width: 1)),
                                                    filled: true,
                                                    fillColor: ColorConstant.whiteA700,
                                                    isDense: true,
                                                    contentPadding: EdgeInsets.only(left: getHorizontalSize(16.00), top: getVerticalSize(17.80), bottom: getVerticalSize(17.80))),
                                                style: TextStyle(color: ColorConstant.bluegray300, fontSize: getFontSize(12.0), fontFamily: 'Poppins', fontWeight: FontWeight.w700)))),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                            padding: EdgeInsets.only(
                                                left: getHorizontalSize(16.00),
                                                top: getVerticalSize(40.00),
                                                right:
                                                    getHorizontalSize(16.00)),
                                            child: GestureDetector(
                                                onTap: () {
                                                  onTapBtnSave();
                                                },
                                                child: Container(
                                                    alignment: Alignment.center,
                                                    height:
                                                        getVerticalSize(57.00),
                                                    width: getHorizontalSize(
                                                        343.00),
                                                    decoration: AppDecoration
                                                        .textStylePoppinsbold146,
                                                    child: Text("lbl_save".tr,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: AppStyle
                                                            .textStylePoppinsbold146
                                                            .copyWith(
                                                                fontSize:
                                                                    getFontSize(
                                                                        14),
                                                                letterSpacing:
                                                                    0.50))))))
                                  ])))
                    ]))));
  }

  onTapBtnSave() {
    Get.toNamed(AppRoutes.creditCardAndDebitScreen);
  }
}
