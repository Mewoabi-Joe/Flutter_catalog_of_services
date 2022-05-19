import 'controller/add_address_controller.dart';
import 'package:business/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AddAddressScreen extends GetWidget<AddAddressController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          decoration: BoxDecoration(
            color: ColorConstant.whiteA700,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: size.width,
                margin: EdgeInsets.only(
                  top: getVerticalSize(
                    26.00,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                    left: getHorizontalSize(
                      16.00,
                    ),
                    right: getHorizontalSize(
                      213.00,
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
                          "lbl_add_address".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.textStylePoppinsbold161.copyWith(
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
              Expanded(
                child: SingleChildScrollView(
                  padding: EdgeInsets.only(
                    top: getVerticalSize(
                      45.00,
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
                          "msg_country_or_regi".tr,
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
                          top: getVerticalSize(
                            12.00,
                          ),
                          right: getHorizontalSize(
                            16.00,
                          ),
                        ),
                        child: Container(
                          height: getVerticalSize(
                            48.00,
                          ),
                          width: getHorizontalSize(
                            343.00,
                          ),
                          child: TextFormField(
                            controller: controller.group95Controller,
                            decoration: InputDecoration(
                              hintText: "msg_enter_the_count".tr,
                              hintStyle:
                                  AppStyle.textStylePoppinsregular12.copyWith(
                                fontSize: getFontSize(
                                  12.0,
                                ),
                                color: ColorConstant.bluegray300,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                  getHorizontalSize(
                                    5.00,
                                  ),
                                ),
                                borderSide: BorderSide(
                                  color: ColorConstant.blue50,
                                  width: 1,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                  getHorizontalSize(
                                    5.00,
                                  ),
                                ),
                                borderSide: BorderSide(
                                  color: ColorConstant.blue50,
                                  width: 1,
                                ),
                              ),
                              isDense: true,
                              contentPadding: EdgeInsets.only(
                                left: getHorizontalSize(
                                  19.00,
                                ),
                                top: getVerticalSize(
                                  17.80,
                                ),
                                bottom: getVerticalSize(
                                  17.80,
                                ),
                              ),
                            ),
                            style: TextStyle(
                              color: ColorConstant.bluegray300,
                              fontSize: getFontSize(
                                12.0,
                              ),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: getHorizontalSize(
                            16.00,
                          ),
                          top: getVerticalSize(
                            24.00,
                          ),
                          right: getHorizontalSize(
                            16.00,
                          ),
                        ),
                        child: Text(
                          "lbl_first_name".tr,
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
                          top: getVerticalSize(
                            12.00,
                          ),
                          right: getHorizontalSize(
                            16.00,
                          ),
                        ),
                        child: Container(
                          height: getVerticalSize(
                            48.00,
                          ),
                          width: getHorizontalSize(
                            343.00,
                          ),
                          child: TextFormField(
                            controller: controller.group103Controller,
                            decoration: InputDecoration(
                              hintText: "msg_enter_the_first".tr,
                              hintStyle:
                                  AppStyle.textStylePoppinsregular12.copyWith(
                                fontSize: getFontSize(
                                  12.0,
                                ),
                                color: ColorConstant.bluegray300,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                  getHorizontalSize(
                                    5.00,
                                  ),
                                ),
                                borderSide: BorderSide(
                                  color: ColorConstant.blue50,
                                  width: 1,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                  getHorizontalSize(
                                    5.00,
                                  ),
                                ),
                                borderSide: BorderSide(
                                  color: ColorConstant.blue50,
                                  width: 1,
                                ),
                              ),
                              isDense: true,
                              contentPadding: EdgeInsets.only(
                                left: getHorizontalSize(
                                  19.00,
                                ),
                                top: getVerticalSize(
                                  17.80,
                                ),
                                bottom: getVerticalSize(
                                  17.80,
                                ),
                              ),
                            ),
                            style: TextStyle(
                              color: ColorConstant.bluegray300,
                              fontSize: getFontSize(
                                12.0,
                              ),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: getHorizontalSize(
                            16.00,
                          ),
                          top: getVerticalSize(
                            23.00,
                          ),
                          right: getHorizontalSize(
                            16.00,
                          ),
                        ),
                        child: Text(
                          "lbl_last_name".tr,
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
                          top: getVerticalSize(
                            12.00,
                          ),
                          right: getHorizontalSize(
                            16.00,
                          ),
                        ),
                        child: Container(
                          height: getVerticalSize(
                            48.00,
                          ),
                          width: getHorizontalSize(
                            343.00,
                          ),
                          child: TextFormField(
                            controller: controller.group96Controller,
                            decoration: InputDecoration(
                              hintText: "msg_enter_the_last".tr,
                              hintStyle:
                                  AppStyle.textStylePoppinsregular12.copyWith(
                                fontSize: getFontSize(
                                  12.0,
                                ),
                                color: ColorConstant.bluegray300,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                  getHorizontalSize(
                                    5.00,
                                  ),
                                ),
                                borderSide: BorderSide(
                                  color: ColorConstant.blue50,
                                  width: 1,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                  getHorizontalSize(
                                    5.00,
                                  ),
                                ),
                                borderSide: BorderSide(
                                  color: ColorConstant.blue50,
                                  width: 1,
                                ),
                              ),
                              isDense: true,
                              contentPadding: EdgeInsets.only(
                                left: getHorizontalSize(
                                  19.00,
                                ),
                                top: getVerticalSize(
                                  17.80,
                                ),
                                bottom: getVerticalSize(
                                  17.80,
                                ),
                              ),
                            ),
                            style: TextStyle(
                              color: ColorConstant.bluegray300,
                              fontSize: getFontSize(
                                12.0,
                              ),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: getHorizontalSize(
                            16.00,
                          ),
                          top: getVerticalSize(
                            24.00,
                          ),
                          right: getHorizontalSize(
                            16.00,
                          ),
                        ),
                        child: Text(
                          "lbl_street_address".tr,
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
                          top: getVerticalSize(
                            12.00,
                          ),
                          right: getHorizontalSize(
                            16.00,
                          ),
                        ),
                        child: Container(
                          height: getVerticalSize(
                            48.00,
                          ),
                          width: getHorizontalSize(
                            343.00,
                          ),
                          child: TextFormField(
                            controller: controller.group97Controller,
                            decoration: InputDecoration(
                              hintText: "msg_enter_the_stree".tr,
                              hintStyle:
                                  AppStyle.textStylePoppinsregular12.copyWith(
                                fontSize: getFontSize(
                                  12.0,
                                ),
                                color: ColorConstant.bluegray300,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                  getHorizontalSize(
                                    5.00,
                                  ),
                                ),
                                borderSide: BorderSide(
                                  color: ColorConstant.blue50,
                                  width: 1,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                  getHorizontalSize(
                                    5.00,
                                  ),
                                ),
                                borderSide: BorderSide(
                                  color: ColorConstant.blue50,
                                  width: 1,
                                ),
                              ),
                              isDense: true,
                              contentPadding: EdgeInsets.only(
                                left: getHorizontalSize(
                                  19.00,
                                ),
                                top: getVerticalSize(
                                  17.80,
                                ),
                                bottom: getVerticalSize(
                                  17.80,
                                ),
                              ),
                            ),
                            style: TextStyle(
                              color: ColorConstant.bluegray300,
                              fontSize: getFontSize(
                                12.0,
                              ),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: getHorizontalSize(
                            16.00,
                          ),
                          top: getVerticalSize(
                            22.00,
                          ),
                          right: getHorizontalSize(
                            16.00,
                          ),
                        ),
                        child: Text(
                          "msg_street_address".tr,
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
                          top: getVerticalSize(
                            16.00,
                          ),
                          right: getHorizontalSize(
                            16.00,
                          ),
                        ),
                        child: Container(
                          height: getVerticalSize(
                            48.00,
                          ),
                          width: getHorizontalSize(
                            343.00,
                          ),
                          child: TextFormField(
                            controller: controller.group98Controller,
                            decoration: InputDecoration(
                              hintText: "msg_enter_the_stree2".tr,
                              hintStyle:
                                  AppStyle.textStylePoppinsregular12.copyWith(
                                fontSize: getFontSize(
                                  12.0,
                                ),
                                color: ColorConstant.bluegray300,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                  getHorizontalSize(
                                    5.00,
                                  ),
                                ),
                                borderSide: BorderSide(
                                  color: ColorConstant.blue50,
                                  width: 1,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                  getHorizontalSize(
                                    5.00,
                                  ),
                                ),
                                borderSide: BorderSide(
                                  color: ColorConstant.blue50,
                                  width: 1,
                                ),
                              ),
                              isDense: true,
                              contentPadding: EdgeInsets.only(
                                left: getHorizontalSize(
                                  19.00,
                                ),
                                top: getVerticalSize(
                                  17.80,
                                ),
                                bottom: getVerticalSize(
                                  17.80,
                                ),
                              ),
                            ),
                            style: TextStyle(
                              color: ColorConstant.bluegray300,
                              fontSize: getFontSize(
                                12.0,
                              ),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: getHorizontalSize(
                            16.00,
                          ),
                          top: getVerticalSize(
                            22.00,
                          ),
                          right: getHorizontalSize(
                            16.00,
                          ),
                        ),
                        child: Text(
                          "lbl_city".tr,
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
                          top: getVerticalSize(
                            12.00,
                          ),
                          right: getHorizontalSize(
                            16.00,
                          ),
                        ),
                        child: Container(
                          height: getVerticalSize(
                            48.00,
                          ),
                          width: getHorizontalSize(
                            343.00,
                          ),
                          child: TextFormField(
                            controller: controller.group99Controller,
                            decoration: InputDecoration(
                              hintText: "lbl_enter_the_city".tr,
                              hintStyle:
                                  AppStyle.textStylePoppinsregular12.copyWith(
                                fontSize: getFontSize(
                                  12.0,
                                ),
                                color: ColorConstant.bluegray300,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                  getHorizontalSize(
                                    5.00,
                                  ),
                                ),
                                borderSide: BorderSide(
                                  color: ColorConstant.blue50,
                                  width: 1,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                  getHorizontalSize(
                                    5.00,
                                  ),
                                ),
                                borderSide: BorderSide(
                                  color: ColorConstant.blue50,
                                  width: 1,
                                ),
                              ),
                              isDense: true,
                              contentPadding: EdgeInsets.only(
                                left: getHorizontalSize(
                                  19.00,
                                ),
                                top: getVerticalSize(
                                  17.80,
                                ),
                                bottom: getVerticalSize(
                                  17.80,
                                ),
                              ),
                            ),
                            style: TextStyle(
                              color: ColorConstant.bluegray300,
                              fontSize: getFontSize(
                                12.0,
                              ),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: getHorizontalSize(
                            16.00,
                          ),
                          top: getVerticalSize(
                            24.00,
                          ),
                          right: getHorizontalSize(
                            16.00,
                          ),
                        ),
                        child: Text(
                          "msg_state_province".tr,
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
                          top: getVerticalSize(
                            12.00,
                          ),
                          right: getHorizontalSize(
                            16.00,
                          ),
                        ),
                        child: Container(
                          height: getVerticalSize(
                            48.00,
                          ),
                          width: getHorizontalSize(
                            343.00,
                          ),
                          child: TextFormField(
                            controller: controller.group100Controller,
                            decoration: InputDecoration(
                              hintText: "msg_enter_the_state".tr,
                              hintStyle:
                                  AppStyle.textStylePoppinsregular12.copyWith(
                                fontSize: getFontSize(
                                  12.0,
                                ),
                                color: ColorConstant.bluegray300,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                  getHorizontalSize(
                                    5.00,
                                  ),
                                ),
                                borderSide: BorderSide(
                                  color: ColorConstant.blue50,
                                  width: 1,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                  getHorizontalSize(
                                    5.00,
                                  ),
                                ),
                                borderSide: BorderSide(
                                  color: ColorConstant.blue50,
                                  width: 1,
                                ),
                              ),
                              isDense: true,
                              contentPadding: EdgeInsets.only(
                                left: getHorizontalSize(
                                  19.00,
                                ),
                                top: getVerticalSize(
                                  17.80,
                                ),
                                bottom: getVerticalSize(
                                  17.80,
                                ),
                              ),
                            ),
                            style: TextStyle(
                              color: ColorConstant.bluegray300,
                              fontSize: getFontSize(
                                12.0,
                              ),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: getHorizontalSize(
                            16.00,
                          ),
                          top: getVerticalSize(
                            24.00,
                          ),
                          right: getHorizontalSize(
                            16.00,
                          ),
                        ),
                        child: Text(
                          "lbl_zip_code".tr,
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
                          top: getVerticalSize(
                            12.00,
                          ),
                          right: getHorizontalSize(
                            16.00,
                          ),
                        ),
                        child: Container(
                          height: getVerticalSize(
                            48.00,
                          ),
                          width: getHorizontalSize(
                            343.00,
                          ),
                          child: TextFormField(
                            controller: controller.group101Controller,
                            decoration: InputDecoration(
                              hintText: "msg_enter_the_zip_c".tr,
                              hintStyle:
                                  AppStyle.textStylePoppinsregular12.copyWith(
                                fontSize: getFontSize(
                                  12.0,
                                ),
                                color: ColorConstant.bluegray300,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                  getHorizontalSize(
                                    5.00,
                                  ),
                                ),
                                borderSide: BorderSide(
                                  color: ColorConstant.blue50,
                                  width: 1,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                  getHorizontalSize(
                                    5.00,
                                  ),
                                ),
                                borderSide: BorderSide(
                                  color: ColorConstant.blue50,
                                  width: 1,
                                ),
                              ),
                              isDense: true,
                              contentPadding: EdgeInsets.only(
                                left: getHorizontalSize(
                                  19.00,
                                ),
                                top: getVerticalSize(
                                  17.80,
                                ),
                                bottom: getVerticalSize(
                                  17.80,
                                ),
                              ),
                            ),
                            style: TextStyle(
                              color: ColorConstant.bluegray300,
                              fontSize: getFontSize(
                                12.0,
                              ),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: getHorizontalSize(
                            16.00,
                          ),
                          top: getVerticalSize(
                            24.00,
                          ),
                          right: getHorizontalSize(
                            16.00,
                          ),
                        ),
                        child: Text(
                          "lbl_phone_number".tr,
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
                          top: getVerticalSize(
                            12.00,
                          ),
                          right: getHorizontalSize(
                            16.00,
                          ),
                        ),
                        child: Container(
                          height: getVerticalSize(
                            48.00,
                          ),
                          width: getHorizontalSize(
                            343.00,
                          ),
                          child: TextFormField(
                            controller: controller.group102Controller,
                            decoration: InputDecoration(
                              hintText: "msg_enter_the_phone".tr,
                              hintStyle:
                                  AppStyle.textStylePoppinsregular12.copyWith(
                                fontSize: getFontSize(
                                  12.0,
                                ),
                                color: ColorConstant.bluegray300,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                  getHorizontalSize(
                                    5.00,
                                  ),
                                ),
                                borderSide: BorderSide(
                                  color: ColorConstant.blue50,
                                  width: 1,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                  getHorizontalSize(
                                    5.00,
                                  ),
                                ),
                                borderSide: BorderSide(
                                  color: ColorConstant.blue50,
                                  width: 1,
                                ),
                              ),
                              isDense: true,
                              contentPadding: EdgeInsets.only(
                                left: getHorizontalSize(
                                  19.00,
                                ),
                                top: getVerticalSize(
                                  17.80,
                                ),
                                bottom: getVerticalSize(
                                  17.80,
                                ),
                              ),
                            ),
                            style: TextStyle(
                              color: ColorConstant.bluegray300,
                              fontSize: getFontSize(
                                12.0,
                              ),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
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
                              20.00,
                            ),
                            right: getHorizontalSize(
                              16.00,
                            ),
                          ),
                          child: Container(
                            alignment: Alignment.center,
                            height: getVerticalSize(
                              57.00,
                            ),
                            width: getHorizontalSize(
                              343.00,
                            ),
                            decoration: AppDecoration.textStylePoppinsbold146,
                            child: Text(
                              "lbl_add_address".tr,
                              textAlign: TextAlign.center,
                              style: AppStyle.textStylePoppinsbold146.copyWith(
                                fontSize: getFontSize(
                                  14,
                                ),
                                letterSpacing: 0.50,
                              ),
                            ),
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
    );
  }
}
