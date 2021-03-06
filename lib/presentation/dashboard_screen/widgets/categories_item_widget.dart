import '../../../initial/models/catalog.dart';
import '../controller/dashboard_controller.dart';
import '../models/categories_item_model.dart';
import 'package:business/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore: must_be_immutable
class CategoriesItemWidget extends StatelessWidget {
  CategoriesItemWidget(this.catalog);

  Catalog? catalog;

  // var controller = Get.find<DashboardController>();

  @override
  Widget build(BuildContext context) {
      return IntrinsicWidth(
        child: Align(
          alignment: Alignment.centerRight,
          child: Padding(
            padding: EdgeInsets.only(
              right: getHorizontalSize(
                12.00,
              ),
            ),
            child: Column(
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
                  child: InkWell(
                    onTap: ()=> Get.toNamed(AppRoutes.offerScreen, parameters: {'catalogId': catalog!.catalogId!, 'catalogFirstImageUrl': catalog!.firstImageUrl!, 'catalogName': catalog!.catalogName!}),

                    child: Image.network(
                      catalog!.firstImageUrl!,
                      fit: BoxFit.fill,
                    ),
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
                    catalog!.catalogName!,
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
            ),
          ),
        ),
      );
  }
}
