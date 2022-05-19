import '../credit_card_and_debit_screen/widgets/credit_card_and_debit_item_widget.dart';
import 'controller/credit_card_and_debit_controller.dart';
import 'models/credit_card_and_debit_item_model.dart';
import 'package:business/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CreditCardAndDebitScreen extends GetWidget<CreditCardAndDebitController> {
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
                                            child: Padding(
                                                padding: EdgeInsets.only(
                                                    right: getHorizontalSize(
                                                        118.00)),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Container(
                                                          height:
                                                              getSize(24.00),
                                                          width: getSize(24.00),
                                                          child: SvgPicture.asset(
                                                              ImageConstant
                                                                  .imgLefticon,
                                                              fit:
                                                                  BoxFit.fill)),
                                                      Padding(
                                                          padding: EdgeInsets.only(
                                                              left:
                                                                  getHorizontalSize(
                                                                      12.00)),
                                                          child: Text(
                                                              "msg_credit_card_and"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .textStylePoppinsbold161
                                                                  .copyWith(
                                                                      fontSize:
                                                                          getFontSize(
                                                                              16),
                                                                      letterSpacing:
                                                                          0.50)))
                                                    ]))),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                top: getVerticalSize(24.00)),
                                            child: Obx(() => ListView.builder(
                                                physics:
                                                    BouncingScrollPhysics(),
                                                shrinkWrap: true,
                                                itemCount: controller
                                                    .creditCardAndDebitModelObj
                                                    .value
                                                    .creditCardAndDebitItemList
                                                    .length,
                                                itemBuilder: (context, index) {
                                                  CreditCardAndDebitItemModel
                                                      model = controller
                                                          .creditCardAndDebitModelObj
                                                          .value
                                                          .creditCardAndDebitItemList[index];
                                                  return CreditCardAndDebitItemWidget(
                                                      model,
                                                      onTapCreditCarddet:
                                                          onTapCreditCarddet);
                                                }))),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                top: getVerticalSize(193.00)),
                                            child: GestureDetector(
                                                onTap: () {
                                                  onTapBtnAddcard();
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
                                                        "lbl_add_card".tr,
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

  onTapCreditCarddet() {
    Get.toNamed(AppRoutes.lailyfaFebrinaCardScreen);
  }

  onTapBtnAddcard() {
    Get.toNamed(AppRoutes.addCardScreen);
  }
}
