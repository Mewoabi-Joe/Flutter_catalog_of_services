import '../../../initial/models/catalog.dart';
import '../controller/list_category_controller.dart';
import '../models/list_category_item_model.dart';
import 'package:business/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore: must_be_immutable
class ListCategoryItemWidget extends StatelessWidget {
  ListCategoryItemWidget(this.catalog);

  Catalog catalog;

  // var controller = Get.find<ListCategoryController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        decoration: BoxDecoration(
          color: ColorConstant.whiteA700,
        ),
        child: InkWell(
          onTap: ()=> Get.toNamed(AppRoutes.offerScreen, parameters: {'catalogId': catalog.catalogId!, 'catalogFirstImageUrl': catalog.firstImageUrl!, 'catalogName': catalog.catalogName!}),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: getHorizontalSize(
                    16.00,
                  ),
                  top: getVerticalSize(
                    16.00,
                  ),
                  bottom: getVerticalSize(
                    16.00,
                  ),
                ),
                child: Container(
                  height: getSize(
                    24.00,
                  ),
                  width: getSize(
                    24.00,
                  ),
                  child: Image.network(
                    catalog.firstImageUrl!,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: getHorizontalSize(
                    16.00,
                  ),
                  top: getVerticalSize(
                    19.00,
                  ),
                  right: getHorizontalSize(
                    287.00,
                  ),
                  bottom: getVerticalSize(
                    19.00,
                  ),
                ),
                child: Text(
                  catalog.catalogName!,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.textStylePoppinsbold121.copyWith(
                    fontSize: getFontSize(
                      12,
                    ),
                    letterSpacing: 0.50,
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
