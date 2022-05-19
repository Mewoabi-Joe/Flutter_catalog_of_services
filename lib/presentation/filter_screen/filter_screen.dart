import '../filter_screen/widgets/filter_item_widget.dart';
import 'controller/filter_controller.dart';
import 'models/filter_item_model.dart';
import 'package:business/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FilterScreen extends GetWidget<FilterController> {
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
                          margin: EdgeInsets.only(top: getVerticalSize(23.52)),
                          child: Padding(
                              padding: EdgeInsets.only(
                                  left: getHorizontalSize(18.00),
                                  right: getHorizontalSize(212.00)),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Container(
                                        height: getVerticalSize(23.15),
                                        width: getHorizontalSize(24.00),
                                        child: SvgPicture.asset(
                                            ImageConstant.imgCloseicon,
                                            fit: BoxFit.fill)),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: getHorizontalSize(12.00)),
                                        child: Text("lbl_filter_search".tr,
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
                                  top: getVerticalSize(47.33),
                                  bottom: getVerticalSize(20.00)),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: getHorizontalSize(16.00),
                                            right: getHorizontalSize(16.00)),
                                        child: Text("lbl_price_range".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .textStylePoppinsbold141
                                                .copyWith(
                                                    fontSize: getFontSize(14),
                                                    letterSpacing: 0.50))),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                            padding: EdgeInsets.only(
                                                left: getHorizontalSize(16.00),
                                                top: getVerticalSize(12.00),
                                                right:
                                                    getHorizontalSize(16.00)),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Container(
                                                      width: getHorizontalSize(
                                                          165.00),
                                                      padding: EdgeInsets.only(
                                                          left:
                                                              getHorizontalSize(
                                                                  16.00),
                                                          top: getVerticalSize(
                                                              13.00),
                                                          bottom:
                                                              getVerticalSize(
                                                                  13.00)),
                                                      decoration: AppDecoration
                                                          .textStylePoppinsbold126,
                                                      child: Text(
                                                          "lbl_1_245".tr,
                                                          maxLines: null,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .textStylePoppinsbold126
                                                              .copyWith(
                                                                  fontSize:
                                                                      getFontSize(
                                                                          12),
                                                                  letterSpacing:
                                                                      0.50))),
                                                  Container(
                                                      width: getHorizontalSize(
                                                          165.00),
                                                      padding: EdgeInsets.only(
                                                          left:
                                                              getHorizontalSize(
                                                                  16.00),
                                                          top: getVerticalSize(
                                                              13.00),
                                                          bottom:
                                                              getVerticalSize(
                                                                  13.00)),
                                                      decoration: AppDecoration
                                                          .textStylePoppinsbold126,
                                                      child: Text(
                                                          "lbl_9_344".tr,
                                                          maxLines: null,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .textStylePoppinsbold126
                                                              .copyWith(
                                                                  fontSize:
                                                                      getFontSize(
                                                                          12),
                                                                  letterSpacing:
                                                                      0.50)))
                                                ]))),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: getHorizontalSize(16.00),
                                            top: getVerticalSize(36.00),
                                            right: getHorizontalSize(16.00)),
                                        child: Text("lbl_condition".tr,
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
                                            right: getHorizontalSize(16.00)),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                  alignment: Alignment.center,
                                                  height:
                                                      getVerticalSize(50.00),
                                                  width:
                                                      getHorizontalSize(59.00),
                                                  decoration: AppDecoration
                                                      .textStylePoppinsregular123,
                                                  child: Text("lbl_new".tr,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: AppStyle
                                                          .textStylePoppinsregular123
                                                          .copyWith(
                                                              fontSize:
                                                                  getFontSize(
                                                                      12),
                                                              letterSpacing:
                                                                  0.50))),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: getHorizontalSize(
                                                          9.00)),
                                                  child: Container(
                                                      alignment:
                                                          Alignment.center,
                                                      height: getVerticalSize(
                                                          50.00),
                                                      width: getHorizontalSize(
                                                          65.00),
                                                      decoration: AppDecoration
                                                          .textStylePoppinsbold127,
                                                      child: Text("lbl_used".tr,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: AppStyle
                                                              .textStylePoppinsbold127
                                                              .copyWith(
                                                                  fontSize:
                                                                      getFontSize(
                                                                          12),
                                                                  letterSpacing:
                                                                      0.50)))),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: getHorizontalSize(
                                                          8.00)),
                                                  child: Container(
                                                      alignment:
                                                          Alignment.center,
                                                      height: getVerticalSize(
                                                          50.00),
                                                      width: getHorizontalSize(
                                                          120.00),
                                                      decoration: AppDecoration
                                                          .textStylePoppinsbold127,
                                                      child: Text(
                                                          "lbl_not_specified"
                                                              .tr,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: AppStyle
                                                              .textStylePoppinsbold127
                                                              .copyWith(
                                                                  fontSize:
                                                                      getFontSize(
                                                                          12),
                                                                  letterSpacing:
                                                                      0.50))))
                                            ])),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: getHorizontalSize(16.00),
                                            top: getVerticalSize(24.00),
                                            right: getHorizontalSize(16.00)),
                                        child: Text("lbl_buying_format".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .textStylePoppinsbold141
                                                .copyWith(
                                                    fontSize: getFontSize(14),
                                                    letterSpacing: 0.50))),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: getVerticalSize(12.00)),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                        padding: EdgeInsets.only(
                                                            left:
                                                                getHorizontalSize(
                                                                    16.00)),
                                                        child: Container(
                                                            alignment: Alignment
                                                                .center,
                                                            height:
                                                                getVerticalSize(
                                                                    50.00),
                                                            width:
                                                                getHorizontalSize(
                                                                    99.00),
                                                            decoration: AppDecoration
                                                                .textStylePoppinsregular123,
                                                            child: Text(
                                                                "lbl_all_listings"
                                                                    .tr,
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style: AppStyle
                                                                    .textStylePoppinsregular123
                                                                    .copyWith(
                                                                        fontSize: getFontSize(12),
                                                                        letterSpacing: 0.50)))),
                                                    Padding(
                                                        padding: EdgeInsets.only(
                                                            left: getHorizontalSize(
                                                                8.00)),
                                                        child: Container(
                                                            alignment: Alignment
                                                                .center,
                                                            height:
                                                                getVerticalSize(
                                                                    50.00),
                                                            width:
                                                                getHorizontalSize(
                                                                    129.00),
                                                            decoration: AppDecoration
                                                                .textStylePoppinsbold127,
                                                            child: Text(
                                                                "lbl_accepts_offers"
                                                                    .tr,
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style: AppStyle
                                                                    .textStylePoppinsbold127
                                                                    .copyWith(
                                                                        fontSize: getFontSize(12),
                                                                        letterSpacing: 0.50)))),
                                                    Padding(
                                                        padding: EdgeInsets.only(
                                                            left: getHorizontalSize(
                                                                8.00),
                                                            right:
                                                                getHorizontalSize(
                                                                    34.00)),
                                                        child: Container(
                                                            alignment: Alignment
                                                                .center,
                                                            height:
                                                                getVerticalSize(
                                                                    50.00),
                                                            width:
                                                                getHorizontalSize(
                                                                    81.00),
                                                            decoration: AppDecoration
                                                                .textStylePoppinsregular123,
                                                            child: Text("lbl_auction".tr,
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style: AppStyle
                                                                    .textStylePoppinsregular123
                                                                    .copyWith(
                                                                        fontSize:
                                                                            getFontSize(12),
                                                                        letterSpacing: 0.50))))
                                                  ]),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      top: getVerticalSize(
                                                          8.00)),
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
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                height:
                                                                    getVerticalSize(
                                                                        50.00),
                                                                width: getHorizontalSize(
                                                                    98.00),
                                                                decoration:
                                                                    AppDecoration
                                                                        .textStylePoppinsregular123,
                                                                child: Text(
                                                                    "lbl_buy_it_now"
                                                                        .tr,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: AppStyle
                                                                        .textStylePoppinsregular123
                                                                        .copyWith(
                                                                            fontSize: getFontSize(12),
                                                                            letterSpacing: 0.50)))),
                                                        Padding(
                                                            padding: EdgeInsets.only(
                                                                left: getHorizontalSize(
                                                                    8.00),
                                                                right:
                                                                    getHorizontalSize(
                                                                        130.00)),
                                                            child: Container(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                height:
                                                                    getVerticalSize(
                                                                        50.00),
                                                                width:
                                                                    getHorizontalSize(
                                                                        123.00),
                                                                decoration:
                                                                    AppDecoration
                                                                        .textStylePoppinsregular123,
                                                                child: Text("lbl_classified_ads".tr,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: AppStyle
                                                                        .textStylePoppinsregular123
                                                                        .copyWith(
                                                                            fontSize: getFontSize(12),
                                                                            letterSpacing: 0.50))))
                                                      ]))
                                            ])),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: getHorizontalSize(16.00),
                                            top: getVerticalSize(24.00),
                                            right: getHorizontalSize(16.00)),
                                        child: Text("lbl_item_location".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .textStylePoppinsbold141
                                                .copyWith(
                                                    fontSize: getFontSize(14),
                                                    letterSpacing: 0.50))),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: getVerticalSize(12.00)),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
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
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                height:
                                                                    getVerticalSize(
                                                                        50.00),
                                                                width: getHorizontalSize(
                                                                    81.00),
                                                                decoration:
                                                                    AppDecoration
                                                                        .textStylePoppinsregular123,
                                                                child: Text(
                                                                    "lbl_us_only"
                                                                        .tr,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: AppStyle
                                                                        .textStylePoppinsregular123
                                                                        .copyWith(
                                                                            fontSize: getFontSize(12),
                                                                            letterSpacing: 0.50)))),
                                                        Padding(
                                                            padding: EdgeInsets.only(
                                                                left: getHorizontalSize(
                                                                    8.00)),
                                                            child: Container(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                height:
                                                                    getVerticalSize(
                                                                        50.00),
                                                                width: getHorizontalSize(
                                                                    129.00),
                                                                decoration:
                                                                    AppDecoration
                                                                        .textStylePoppinsbold127,
                                                                child: Text(
                                                                    "lbl_north_america"
                                                                        .tr,
                                                                    textAlign: TextAlign
                                                                        .center,
                                                                    style: AppStyle
                                                                        .textStylePoppinsbold127
                                                                        .copyWith(
                                                                            fontSize: getFontSize(12),
                                                                            letterSpacing: 0.50)))),
                                                        Padding(
                                                            padding: EdgeInsets.only(
                                                                left: getHorizontalSize(
                                                                    8.00),
                                                                right:
                                                                    getHorizontalSize(
                                                                        56.00)),
                                                            child: Container(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                height:
                                                                    getVerticalSize(
                                                                        50.00),
                                                                width:
                                                                    getHorizontalSize(
                                                                        77.00),
                                                                decoration:
                                                                    AppDecoration
                                                                        .textStylePoppinsregular123,
                                                                child: Text("lbl_europe".tr,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: AppStyle
                                                                        .textStylePoppinsregular123
                                                                        .copyWith(
                                                                            fontSize: getFontSize(12),
                                                                            letterSpacing: 0.50))))
                                                      ])),
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Padding(
                                                      padding: EdgeInsets.only(
                                                          left: getHorizontalSize(
                                                              16.00),
                                                          top: getVerticalSize(
                                                              8.00),
                                                          right: getHorizontalSize(
                                                              16.00)),
                                                      child: Container(
                                                          alignment:
                                                              Alignment.center,
                                                          height: getVerticalSize(
                                                              50.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  59.00),
                                                          decoration: AppDecoration
                                                              .textStylePoppinsregular123,
                                                          child: Text(
                                                              "lbl_asia".tr,
                                                              textAlign: TextAlign
                                                                  .center,
                                                              style: AppStyle.textStylePoppinsregular123.copyWith(
                                                                  fontSize: getFontSize(12),
                                                                  letterSpacing: 0.50)))))
                                            ])),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: getHorizontalSize(16.00),
                                            top: getVerticalSize(24.00),
                                            right: getHorizontalSize(16.00)),
                                        child: Text("lbl_show_only".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .textStylePoppinsbold141
                                                .copyWith(
                                                    fontSize: getFontSize(14),
                                                    letterSpacing: 0.50))),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: getVerticalSize(12.00)),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                        padding: EdgeInsets.only(
                                                            left:
                                                                getHorizontalSize(
                                                                    16.00)),
                                                        child: Container(
                                                            alignment: Alignment
                                                                .center,
                                                            height:
                                                                getVerticalSize(
                                                                    50.00),
                                                            width:
                                                                getHorizontalSize(
                                                                    112.00),
                                                            decoration: AppDecoration
                                                                .textStylePoppinsregular123,
                                                            child: Text(
                                                                "lbl_free_returns"
                                                                    .tr,
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style: AppStyle
                                                                    .textStylePoppinsregular123
                                                                    .copyWith(
                                                                        fontSize: getFontSize(12),
                                                                        letterSpacing: 0.50)))),
                                                    Padding(
                                                        padding: EdgeInsets.only(
                                                            left: getHorizontalSize(
                                                                8.00),
                                                            right:
                                                                getHorizontalSize(
                                                                    89.00)),
                                                        child: Container(
                                                            alignment: Alignment
                                                                .center,
                                                            height:
                                                                getVerticalSize(
                                                                    50.00),
                                                            width:
                                                                getHorizontalSize(
                                                                    150.00),
                                                            decoration: AppDecoration
                                                                .textStylePoppinsbold127,
                                                            child: Text("msg_returns_accepte".tr,
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style: AppStyle
                                                                    .textStylePoppinsbold127
                                                                    .copyWith(
                                                                        fontSize:
                                                                            getFontSize(12),
                                                                        letterSpacing: 0.50))))
                                                  ]),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      top: getVerticalSize(
                                                          8.00)),
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
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                height:
                                                                    getVerticalSize(
                                                                        50.00),
                                                                width: getHorizontalSize(
                                                                    140.00),
                                                                decoration:
                                                                    AppDecoration
                                                                        .textStylePoppinsregular123,
                                                                child: Text(
                                                                    "msg_authorized_sell"
                                                                        .tr,
                                                                    textAlign: TextAlign
                                                                        .center,
                                                                    style: AppStyle
                                                                        .textStylePoppinsregular123
                                                                        .copyWith(
                                                                            fontSize: getFontSize(12),
                                                                            letterSpacing: 0.50)))),
                                                        Padding(
                                                            padding: EdgeInsets.only(
                                                                left: getHorizontalSize(
                                                                    8.00),
                                                                right:
                                                                    getHorizontalSize(
                                                                        67.00)),
                                                            child: Container(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                height:
                                                                    getVerticalSize(
                                                                        50.00),
                                                                width:
                                                                    getHorizontalSize(
                                                                        144.00),
                                                                decoration:
                                                                    AppDecoration
                                                                        .textStylePoppinsregular123,
                                                                child: Text("lbl_completed_items".tr,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: AppStyle
                                                                        .textStylePoppinsregular123
                                                                        .copyWith(
                                                                            fontSize: getFontSize(12),
                                                                            letterSpacing: 0.50))))
                                                      ])),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: getHorizontalSize(
                                                          16.00),
                                                      top:
                                                          getVerticalSize(8.00),
                                                      right: getHorizontalSize(
                                                          16.00)),
                                                  child: Obx(() =>
                                                      ListView.builder(
                                                          physics:
                                                              NeverScrollableScrollPhysics(),
                                                          shrinkWrap: true,
                                                          itemCount: controller
                                                              .filterModelObj
                                                              .value
                                                              .filterItemList
                                                              .length,
                                                          itemBuilder:
                                                              (context, index) {
                                                            FilterItemModel
                                                                model =
                                                                controller
                                                                    .filterModelObj
                                                                    .value
                                                                    .filterItemList[index];
                                                            return FilterItemWidget(
                                                                model);
                                                          }))),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      top: getVerticalSize(
                                                          8.00)),
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
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                height:
                                                                    getVerticalSize(
                                                                        50.00),
                                                                width: getHorizontalSize(
                                                                    174.00),
                                                                decoration:
                                                                    AppDecoration
                                                                        .textStylePoppinsbold127,
                                                                child: Text(
                                                                    "msg_search_in_descr"
                                                                        .tr,
                                                                    textAlign: TextAlign
                                                                        .center,
                                                                    style: AppStyle
                                                                        .textStylePoppinsbold127
                                                                        .copyWith(
                                                                            fontSize: getFontSize(12),
                                                                            letterSpacing: 0.50)))),
                                                        Padding(
                                                            padding: EdgeInsets.only(
                                                                left: getHorizontalSize(
                                                                    8.00),
                                                                right:
                                                                    getHorizontalSize(
                                                                        45.00)),
                                                            child: Container(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                height:
                                                                    getVerticalSize(
                                                                        50.00),
                                                                width:
                                                                    getHorizontalSize(
                                                                        132.00),
                                                                decoration:
                                                                    AppDecoration
                                                                        .textStylePoppinsregular123,
                                                                child: Text("msg_benefits_charit".tr,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: AppStyle
                                                                        .textStylePoppinsregular123
                                                                        .copyWith(
                                                                            fontSize: getFontSize(12),
                                                                            letterSpacing: 0.50))))
                                                      ])),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: getHorizontalSize(
                                                          16.00),
                                                      top:
                                                          getVerticalSize(8.00),
                                                      right: getHorizontalSize(
                                                          16.00)),
                                                  child: Container(
                                                      alignment:
                                                          Alignment.center,
                                                      height: getVerticalSize(
                                                          50.00),
                                                      width: getHorizontalSize(
                                                          163.00),
                                                      decoration: AppDecoration
                                                          .textStylePoppinsregular123,
                                                      child: Text("msg_authenticity_ve".tr,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: AppStyle
                                                              .textStylePoppinsregular123
                                                              .copyWith(
                                                                  fontSize:
                                                                      getFontSize(
                                                                          12),
                                                                  letterSpacing:
                                                                      0.50))))
                                            ])),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                            padding: EdgeInsets.only(
                                                left: getHorizontalSize(16.00),
                                                top: getVerticalSize(28.00),
                                                right:
                                                    getHorizontalSize(16.00)),
                                            child: GestureDetector(
                                                onTap: () {
                                                  onTapBtnApply();
                                                },
                                                child: Container(
                                                    alignment: Alignment.center,
                                                    height:
                                                        getVerticalSize(57.00),
                                                    width: getHorizontalSize(
                                                        343.00),
                                                    decoration: AppDecoration
                                                        .textStylePoppinsbold146,
                                                    child: Text("lbl_apply".tr,
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

  onTapBtnApply() {
    Get.toNamed(AppRoutes.searchResultScreen);
  }
}
