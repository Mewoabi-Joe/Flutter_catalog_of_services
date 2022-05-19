import '../controller/review_product_controller.dart';
import '../models/review_product_item_model.dart';
import 'package:business/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

// ignore: must_be_immutable
class ReviewProductItemWidget extends StatelessWidget {
  ReviewProductItemWidget(this.reviewProductItemModelObj);

  ReviewProductItemModel reviewProductItemModelObj;

  var controller = Get.find<ReviewProductController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: getVerticalSize(
          16.00,
        ),
        right: getHorizontalSize(
          10.00,
        ),
        bottom: getVerticalSize(
          16.00,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(
                  getSize(
                    24.00,
                  ),
                ),
                child: Image.asset(
                  ImageConstant.imgProfilepicture,
                  height: getSize(
                    48.00,
                  ),
                  width: getSize(
                    48.00,
                  ),
                  fit: BoxFit.fill,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: getHorizontalSize(
                    16.00,
                  ),
                  top: getVerticalSize(
                    3.00,
                  ),
                  right: getHorizontalSize(
                    157.00,
                  ),
                  bottom: getVerticalSize(
                    4.00,
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "lbl_james_lawson".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.textStylePoppinsbold141.copyWith(
                        fontSize: getFontSize(
                          14,
                        ),
                        letterSpacing: 0.50,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: getVerticalSize(
                          4.00,
                        ),
                        right: getHorizontalSize(
                          10.00,
                        ),
                      ),
                      child: RatingBar.builder(
                        initialRating: 5,
                        minRating: 0,
                        direction: Axis.horizontal,
                        allowHalfRating: false,
                        itemSize: getVerticalSize(
                          16.00,
                        ),
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
                  ],
                ),
              ),
            ],
          ),
          Container(
            width: getHorizontalSize(
              333.00,
            ),
            margin: EdgeInsets.only(
              top: getVerticalSize(
                16.00,
              ),
            ),
            child: Text(
              "msg_air_max_are_alw".tr,
              maxLines: null,
              textAlign: TextAlign.left,
              style: AppStyle.textStylePoppinsregular12.copyWith(
                fontSize: getFontSize(
                  12,
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
            ),
            child: Text(
              "msg_december_10_20".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
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
    );
  }
}
