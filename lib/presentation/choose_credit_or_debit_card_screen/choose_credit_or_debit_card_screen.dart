import '../choose_credit_or_debit_card_screen/widgets/group67_item_widget.dart';
import 'controller/choose_credit_or_debit_card_controller.dart';
import 'models/group67_item_model.dart';
import 'package:business/core/app_export.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ChooseCreditOrDebitCardScreen
    extends GetWidget<ChooseCreditOrDebitCardController> {
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
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: getHorizontalSize(16.00),
                                      top: getVerticalSize(26.00),
                                      right: getHorizontalSize(16.00),
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
                                                          148.00),
                                                      child: Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          children: [
                                                            Container(
                                                                height: getSize(
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
                                                                    "lbl_choose_card"
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
                                                                            0.50)))
                                                          ])),
                                                  Container(
                                                      height: getSize(24.00),
                                                      width: getSize(24.00),
                                                      child: SvgPicture.asset(
                                                          ImageConstant
                                                              .imgPlusicon1,
                                                          fit: BoxFit.fill))
                                                ])),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                top: getVerticalSize(44.00)),
                                            child: Obx(() =>
                                                CarouselSlider.builder(
                                                    options: CarouselOptions(
                                                        height: getVerticalSize(
                                                            190.00),
                                                        initialPage: 0,
                                                        autoPlay: true,
                                                        viewportFraction: 1.0,
                                                        enableInfiniteScroll:
                                                            false,
                                                        scrollDirection:
                                                            Axis.horizontal,
                                                        onPageChanged:
                                                            (index, reason) {
                                                          controller.silderIndex
                                                              .value = index;
                                                        }),
                                                    itemCount: controller
                                                        .chooseCreditOrDebitCardModelObj
                                                        .value
                                                        .group67ItemList
                                                        .length,
                                                    itemBuilder: (context,
                                                        index, realIndex) {
                                                      Group67ItemModel model =
                                                          controller
                                                              .chooseCreditOrDebitCardModelObj
                                                              .value
                                                              .group67ItemList[index];
                                                      return Group67ItemWidget(
                                                          model);
                                                    }))),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Obx(() => Container(
                                                height: getVerticalSize(8.00),
                                                margin: EdgeInsets.only(
                                                    left: getHorizontalSize(
                                                        136.00),
                                                    top: getVerticalSize(16.00),
                                                    right: getHorizontalSize(
                                                        135.00)),
                                                child: AnimatedSmoothIndicator(
                                                    activeIndex: controller
                                                        .silderIndex.value,
                                                    count: controller
                                                        .chooseCreditOrDebitCardModelObj
                                                        .value
                                                        .group67ItemList
                                                        .length,
                                                    axisDirection:
                                                        Axis.horizontal,
                                                    effect: ScrollingDotsEffect(
                                                        spacing: 8,
                                                        activeDotColor:
                                                            ColorConstant
                                                                .lightBlueA200,
                                                        dotColor: ColorConstant
                                                            .blue50,
                                                        dotHeight:
                                                            getVerticalSize(8.00),
                                                        dotWidth: getHorizontalSize(8.00)))))),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                top: getVerticalSize(353.00)),
                                            child: GestureDetector(
                                                onTap: () {
                                                  onTapBtnPay76686();
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
                                                        "lbl_pay_766_86".tr,
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
                                      ]))
                            ]))))));
  }

  onTapBtnPay76686() {
    Get.toNamed(AppRoutes.successScreen);
  }
}
