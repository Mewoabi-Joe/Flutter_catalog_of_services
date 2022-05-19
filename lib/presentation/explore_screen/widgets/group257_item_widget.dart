import '../controller/explore_controller.dart';
import '../models/group257_item_model.dart';
import 'package:business/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore: must_be_immutable
class Group257ItemWidget extends StatelessWidget {
  Group257ItemWidget(this.group257ItemModelObj);

  Group257ItemModel group257ItemModelObj;

  var controller = Get.find<ExploreController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: getSize(
            70.00,
          ),
          width: getSize(
            70.00,
          ),
          child: SvgPicture.asset(
            ImageConstant.imgDressicon,
            fit: BoxFit.fill,
          ),
        ),
        Container(
          width: getHorizontalSize(
            70.00,
          ),
          margin: EdgeInsets.only(
            top: getVerticalSize(
              8.00,
            ),
          ),
          child: Text(
            "lbl_dress".tr,
            maxLines: null,
            textAlign: TextAlign.center,
            style: AppStyle.textStylePoppinsregular10.copyWith(
              fontSize: getFontSize(
                10,
              ),
              letterSpacing: 0.50,
            ),
          ),
        ),
      ],
    );
  }
}
