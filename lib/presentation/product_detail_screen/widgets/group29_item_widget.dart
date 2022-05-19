import '../controller/product_detail_controller.dart';
import '../models/group29_item_model.dart';
import 'package:business/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Group29ItemWidget extends StatelessWidget {
  Group29ItemWidget(this.group29ItemModelObj);

  Group29ItemModel group29ItemModelObj;

  var controller = Get.find<ProductDetailController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Image.asset(
        ImageConstant.imgProductimage9,
        height: getVerticalSize(
          238.00,
        ),
        width: getHorizontalSize(
          375.00,
        ),
        fit: BoxFit.fill,
      ),
    );
  }
}
