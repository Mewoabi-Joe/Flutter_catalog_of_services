import '../search_result_screen/widgets/search_result_item_widget.dart';
import 'controller/search_result_controller.dart';
import 'models/search_result_item_model.dart';
import 'package:business/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchResultScreen extends GetWidget<SearchResultController> {
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
                          margin: EdgeInsets.only(top: getVerticalSize(18.00)),
                          child: Padding(
                              padding: EdgeInsets.only(
                                  left: getHorizontalSize(16.00),
                                  right: getHorizontalSize(16.00)),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                        height: getVerticalSize(42.00),
                                        width: getHorizontalSize(263.00),
                                        child: TextFormField(
                                            controller:
                                                controller.group46Controller,
                                            decoration: InputDecoration(
                                                hintText: "lbl_nike_air_max".tr,
                                                hintStyle: AppStyle.textStylePoppinsbold12.copyWith(
                                                    fontSize: getFontSize(12.0),
                                                    color: ColorConstant
                                                        .indigo900),
                                                enabledBorder: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            getHorizontalSize(
                                                                5.00)),
                                                    borderSide: BorderSide(
                                                        color: ColorConstant
                                                            .blue50,
                                                        width: 1)),
                                                focusedBorder: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(getHorizontalSize(5.00)),
                                                    borderSide: BorderSide(color: ColorConstant.blue50, width: 1)),
                                                prefixIcon: Padding(padding: EdgeInsets.only(left: getHorizontalSize(16.00), right: getHorizontalSize(10.00)), child: Container(height: getSize(16.00), width: getSize(16.00), child: SvgPicture.asset(ImageConstant.imgSearchicon, fit: BoxFit.contain))),
                                                prefixIconConstraints: BoxConstraints(minWidth: getSize(16.00), minHeight: getSize(16.00)),
                                                isDense: true,
                                                contentPadding: EdgeInsets.only(top: getVerticalSize(15.00), bottom: getVerticalSize(17.00))),
                                            style: TextStyle(color: ColorConstant.indigo900, fontSize: getFontSize(12.0), fontFamily: 'Poppins', fontWeight: FontWeight.w700))),
                                    GestureDetector(
                                        onTap: () {
                                          onTapImgShorticon();
                                        },
                                        child: Padding(
                                            padding: EdgeInsets.only(
                                                top: getVerticalSize(9.00),
                                                bottom: getVerticalSize(9.00)),
                                            child: Container(
                                                height: getSize(24.00),
                                                width: getSize(24.00),
                                                child: SvgPicture.asset(
                                                    ImageConstant.imgShorticon,
                                                    fit: BoxFit.fill)))),
                                    GestureDetector(
                                        onTap: () {
                                          onTapImgFilter();
                                        },
                                        child: Padding(
                                            padding: EdgeInsets.only(
                                                top: getVerticalSize(9.00),
                                                bottom: getVerticalSize(9.00)),
                                            child: Container(
                                                height: getSize(24.00),
                                                width: getSize(24.00),
                                                child: SvgPicture.asset(
                                                    ImageConstant.imgFilter,
                                                    fit: BoxFit.fill))))
                                  ]))),
                      Expanded(
                          child: SingleChildScrollView(
                              padding: EdgeInsets.only(
                                  top: getVerticalSize(18.00),
                                  bottom: getVerticalSize(49.00)),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                        height: getVerticalSize(1.00),
                                        width: size.width,
                                        decoration: BoxDecoration(
                                            color: ColorConstant.blue50)),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: getVerticalSize(15.00)),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: getHorizontalSize(
                                                          16.00),
                                                      bottom: getVerticalSize(
                                                          2.00)),
                                                  child: Text(
                                                      "lbl_145_result".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .textStylePoppinsbold12
                                                          .copyWith(
                                                              fontSize:
                                                                  getFontSize(
                                                                      12),
                                                              letterSpacing:
                                                                  0.50))),
                                              Container(
                                                  width:
                                                      getHorizontalSize(103.00),
                                                  margin: EdgeInsets.only(
                                                      right: getHorizontalSize(
                                                          16.00)),
                                                  child: Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        Padding(
                                                            padding: EdgeInsets.only(
                                                                top:
                                                                    getVerticalSize(
                                                                        1.00),
                                                                bottom:
                                                                    getVerticalSize(
                                                                        1.00)),
                                                            child: Text(
                                                                "lbl_man_shoes"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .right,
                                                                style: AppStyle
                                                                    .textStylePoppinsbold12
                                                                    .copyWith(
                                                                        fontSize:
                                                                            getFontSize(
                                                                                12),
                                                                        letterSpacing:
                                                                            0.50))),
                                                        Padding(
                                                            padding: EdgeInsets.only(
                                                                left:
                                                                    getHorizontalSize(
                                                                        8.00)),
                                                            child: Container(
                                                                height: getSize(
                                                                    24.00),
                                                                width: getSize(
                                                                    24.00),
                                                                child: SvgPicture.asset(
                                                                    ImageConstant
                                                                        .imgDownicon,
                                                                    fit: BoxFit
                                                                        .fill)))
                                                      ]))
                                            ])),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                            padding:
                                                EdgeInsets.only(
                                                    left: getHorizontalSize(
                                                        16.00),
                                                    top: getVerticalSize(16.00),
                                                    right: getHorizontalSize(
                                                        16.00)),
                                            child: Obx(() => GridView.builder(
                                                shrinkWrap: true,
                                                gridDelegate:
                                                    SliverGridDelegateWithFixedCrossAxisCount(
                                                        mainAxisExtent:
                                                            getVerticalSize(
                                                                283.00),
                                                        crossAxisCount: 2,
                                                        mainAxisSpacing:
                                                            getHorizontalSize(
                                                                13.00),
                                                        crossAxisSpacing:
                                                            getHorizontalSize(
                                                                13.00)),
                                                physics:
                                                    NeverScrollableScrollPhysics(),
                                                itemCount: controller
                                                    .searchResultModelObj
                                                    .value
                                                    .searchResultItemList
                                                    .length,
                                                itemBuilder: (context, index) {
                                                  SearchResultItemModel model =
                                                      controller
                                                          .searchResultModelObj
                                                          .value
                                                          .searchResultItemList[index];
                                                  return SearchResultItemWidget(
                                                      model);
                                                }))))
                                  ])))
                    ]))));
  }

  onTapImgShorticon() {
    Get.toNamed(AppRoutes.shortByScreen);
  }

  onTapImgFilter() {
    Get.toNamed(AppRoutes.filterScreen);
  }
}
