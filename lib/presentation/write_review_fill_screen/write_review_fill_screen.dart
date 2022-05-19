import 'controller/write_review_fill_controller.dart';
import 'package:business/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WriteReviewFillScreen extends GetWidget<WriteReviewFillController> {
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
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: getHorizontalSize(
                        16.00,
                      ),
                      top: getVerticalSize(
                        26.00,
                      ),
                      right: getHorizontalSize(
                        16.00,
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
                              right: getHorizontalSize(
                                194.00,
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
                                    "lbl_write_review".tr,
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
                          width: getHorizontalSize(
                            343.00,
                          ),
                          margin: EdgeInsets.only(
                            top: getVerticalSize(
                              44.00,
                            ),
                          ),
                          child: Text(
                            "msg_please_write_ov".tr,
                            maxLines: null,
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
                            top: getVerticalSize(
                              16.00,
                            ),
                            right: getHorizontalSize(
                              10.00,
                            ),
                          ),
                          child: RatingBar.builder(
                            initialRating: 4,
                            minRating: 0,
                            direction: Axis.horizontal,
                            allowHalfRating: false,
                            itemSize: getVerticalSize(
                              32.00,
                            ),
                            unratedColor: ColorConstant.blue50,
                            itemCount: 5,
                            updateOnDrag: true,
                            onRatingUpdate: (rating) {},
                            itemBuilder: (context, _) {
                              return Icon(
                                Icons.star,
                                color: ColorConstant.yellow700,
                              );
                            },
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: getVerticalSize(
                              24.00,
                            ),
                            right: getHorizontalSize(
                              10.00,
                            ),
                          ),
                          child: Text(
                            "msg_write_your_revi".tr,
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
                            top: getVerticalSize(
                              12.00,
                            ),
                          ),
                          child: Container(
                            height: getVerticalSize(
                              160.00,
                            ),
                            width: getHorizontalSize(
                              343.00,
                            ),
                            child: TextFormField(
                              controller: controller.group31Controller,
                              decoration: InputDecoration(
                                hintText: "lbl_add_review".tr,
                                hintStyle:
                                    AppStyle.textStylePoppinsbold122.copyWith(
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
                                filled: true,
                                fillColor: ColorConstant.whiteA700,
                                isDense: true,
                                contentPadding: EdgeInsets.only(
                                  left: getHorizontalSize(
                                    16.00,
                                  ),
                                  top: getVerticalSize(
                                    20.80,
                                  ),
                                  right: getHorizontalSize(
                                    16.00,
                                  ),
                                  bottom: getVerticalSize(
                                    34.80,
                                  ),
                                ),
                              ),
                              style: TextStyle(
                                color: ColorConstant.bluegray300,
                                fontSize: getFontSize(
                                  12.0,
                                ),
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: getVerticalSize(
                              276.00,
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
                              "lbl_write_review".tr,
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
                      ],
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
