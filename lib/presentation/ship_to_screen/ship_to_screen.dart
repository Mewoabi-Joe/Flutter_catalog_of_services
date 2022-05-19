import '../ship_to_screen/widgets/ship_to_item_widget.dart';
import 'controller/ship_to_controller.dart';
import 'models/ship_to_item_model.dart';
import 'package:business/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ShipToScreen extends GetWidget<ShipToController> {
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
                          margin: EdgeInsets.only(top: getVerticalSize(37.90)),
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
                                        width: getHorizontalSize(99.00),
                                        child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Container(
                                                  height:
                                                      getVerticalSize(28.08),
                                                  width:
                                                      getHorizontalSize(24.00),
                                                  child: SvgPicture.asset(
                                                      ImageConstant
                                                          .imgLefticon1,
                                                      fit: BoxFit.fill)),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: getHorizontalSize(
                                                          12.00)),
                                                  child: Text("lbl_ship_to".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .textStylePoppinsbold161
                                                          .copyWith(
                                                              fontSize:
                                                                  getFontSize(
                                                                      16),
                                                              letterSpacing:
                                                                  0.50)))
                                            ])),
                                    Container(
                                        height: getVerticalSize(28.08),
                                        width: getHorizontalSize(24.00),
                                        child: SvgPicture.asset(
                                            ImageConstant.imgPlusicon,
                                            fit: BoxFit.fill))
                                  ]))),
                      Expanded(
                          child: SingleChildScrollView(
                              padding: EdgeInsets.only(
                                  top: getVerticalSize(18.02),
                                  bottom: getVerticalSize(20.00)),
                              child: Padding(
                                  padding: EdgeInsets.only(
                                      left: getHorizontalSize(16.00),
                                      right: getHorizontalSize(16.00)),
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
                                            itemCount: controller.shipToModelObj
                                                .value.shipToItemList.length,
                                            itemBuilder: (context, index) {
                                              ShipToItemModel model = controller
                                                  .shipToModelObj
                                                  .value
                                                  .shipToItemList[index];
                                              return ShipToItemWidget(model);
                                            })),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                top: getVerticalSize(47.00)),
                                            child: GestureDetector(
                                                onTap: () {
                                                  onTapBtnNext();
                                                },
                                                child: Container(
                                                    alignment: Alignment.center,
                                                    height:
                                                        getVerticalSize(57.00),
                                                    width: getHorizontalSize(
                                                        343.00),
                                                    decoration: AppDecoration
                                                        .textStylePoppinsbold146,
                                                    child: Text("lbl_next".tr,
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

  onTapBtnNext() {
    Get.toNamed(AppRoutes.paymentMethodScreen);
  }
}
