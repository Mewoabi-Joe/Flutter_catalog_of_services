import '../review_product_screen/widgets/review_product_item_widget.dart';
import 'controller/review_product_controller.dart';
import 'models/review_product_item_model.dart';
import 'package:business/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ReviewProductScreen extends GetWidget<ReviewProductController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                margin: EdgeInsets.only(top: getVerticalSize(8.00)),
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
                                  left: getHorizontalSize(19.00),
                                  right: getHorizontalSize(243.00)),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Container(
                                        height: getSize(24.00),
                                        width: getSize(24.00),
                                        child: SvgPicture.asset(
                                            ImageConstant.imgLefticon,
                                            fit: BoxFit.fill)),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: getHorizontalSize(12.00)),
                                        child: Text("lbl_5_review2".tr,
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
                                  top: getVerticalSize(34.00),
                                  bottom: getVerticalSize(20.00)),
                              child: Padding(
                                  padding: EdgeInsets.only(
                                      left: getHorizontalSize(19.00),
                                      right: getHorizontalSize(13.00)),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Obx(() => ListView.builder(
                                            physics:
                                                NeverScrollableScrollPhysics(),
                                            shrinkWrap: true,
                                            itemCount: controller
                                                .reviewProductModelObj
                                                .value
                                                .reviewProductItemList
                                                .length,
                                            itemBuilder: (context, index) {
                                              ReviewProductItemModel model =
                                                  controller
                                                          .reviewProductModelObj
                                                          .value
                                                          .reviewProductItemList[
                                                      index];
                                              return ReviewProductItemWidget(
                                                  model);
                                            })),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                top: getVerticalSize(71.00)),
                                            child: GestureDetector(
                                                onTap: () {
                                                  onTapBtnWritereview();
                                                },
                                                child: Container(
                                                    alignment: Alignment.center,
                                                    height:
                                                        getVerticalSize(57.00),
                                                    width: getHorizontalSize(
                                                        343.00),
                                                    decoration: AppDecoration
                                                        .textStylePoppinsbold146,
                                                    child: Text(
                                                        "lbl_write_review".tr,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: AppStyle
                                                            .textStylePoppinsbold146
                                                            .copyWith(
                                                                fontSize:
                                                                    getFontSize(
                                                                        14),
                                                                letterSpacing:
                                                                    0.50)))))
                                      ]))))
                    ]))));
  }

  onTapBtnWritereview() {
    Get.toNamed(AppRoutes.writeReviewFillScreen);
  }
}
