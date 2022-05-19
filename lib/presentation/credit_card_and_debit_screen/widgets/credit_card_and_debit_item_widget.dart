import '../controller/credit_card_and_debit_controller.dart';
import '../models/credit_card_and_debit_item_model.dart';
import 'package:business/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore: must_be_immutable
class CreditCardAndDebitItemWidget extends StatelessWidget {
  CreditCardAndDebitItemWidget(this.creditCardAndDebitItemModelObj,
      {this.onTapCreditCarddet});

  CreditCardAndDebitItemModel creditCardAndDebitItemModelObj;

  var controller = Get.find<CreditCardAndDebitController>();

  VoidCallback? onTapCreditCarddet;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapCreditCarddet!();
      },
      child: Container(
        margin: EdgeInsets.only(
          top: getVerticalSize(
            7.00,
          ),
          bottom: getVerticalSize(
            7.00,
          ),
        ),
        decoration: BoxDecoration(
          color: ColorConstant.lightBlueA200,
          borderRadius: BorderRadius.circular(
            getHorizontalSize(
              5.00,
            ),
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
                  24.00,
                ),
                top: getVerticalSize(
                  24.00,
                ),
                right: getHorizontalSize(
                  24.00,
                ),
              ),
              child: Container(
                height: getVerticalSize(
                  22.00,
                ),
                width: getHorizontalSize(
                  36.00,
                ),
                child: SvgPicture.asset(
                  ImageConstant.imgCreditcardlog,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(
                  left: getHorizontalSize(
                    21.00,
                  ),
                  top: getVerticalSize(
                    31.00,
                  ),
                  right: getHorizontalSize(
                    21.00,
                  ),
                ),
                child: Text(
                  "msg_6326_9124".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: AppStyle.textStylePoppinsbold24.copyWith(
                    fontSize: getFontSize(
                      24,
                    ),
                    letterSpacing: 0.50,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: getVerticalSize(
                  17.00,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: getHorizontalSize(
                        21.00,
                      ),
                      top: getVerticalSize(
                        2.00,
                      ),
                    ),
                    child: Text(
                      "lbl_card_holder".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.textStylePoppinsregular102.copyWith(
                        fontSize: getFontSize(
                          10,
                        ),
                        letterSpacing: 0.50,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: getHorizontalSize(
                        37.00,
                      ),
                      right: getHorizontalSize(
                        153.00,
                      ),
                      bottom: getVerticalSize(
                        2.00,
                      ),
                    ),
                    child: Text(
                      "lbl_card_save".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.textStylePoppinsregular102.copyWith(
                        fontSize: getFontSize(
                          10,
                        ),
                        letterSpacing: 0.50,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: getVerticalSize(
                  2.00,
                ),
                bottom: getVerticalSize(
                  24.00,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: getHorizontalSize(
                        21.00,
                      ),
                      top: getVerticalSize(
                        2.00,
                      ),
                    ),
                    child: Text(
                      "lbl_dominic_ovo".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: AppStyle.textStylePoppinsbold103.copyWith(
                        fontSize: getFontSize(
                          10,
                        ),
                        letterSpacing: 0.50,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: getHorizontalSize(
                        34.34,
                      ),
                      right: getHorizontalSize(
                        169.00,
                      ),
                      bottom: getVerticalSize(
                        2.00,
                      ),
                    ),
                    child: Text(
                      "lbl_06_24".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: AppStyle.textStylePoppinsbold103.copyWith(
                        fontSize: getFontSize(
                          10,
                        ),
                        letterSpacing: 0.50,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
