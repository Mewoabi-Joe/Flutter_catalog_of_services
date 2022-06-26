import '../../../initial/models/item.dart';
import '../controller/offer_controller.dart';
import '../models/offer_screen_item_model.dart';
import 'package:business/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

// ignore: must_be_immutable
class OfferScreenItemWidget extends StatelessWidget {
  OfferScreenItemWidget(this.item);

  Item item;

  // var controller = Get.find<OfferController>();

  VoidCallback? onTapProduct;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapProduct!();
      },
      child: Container(
        decoration: BoxDecoration(
          color: ColorConstant.whiteA700,
          borderRadius: BorderRadius.circular(
            getHorizontalSize(
              5.00,
            ),
          ),
          border: Border.all(
            color: ColorConstant.blue50,
            width: getHorizontalSize(
              1.00,
            ),
          ),
        ),
        child: InkWell(
          onTap: ()=> Get.toNamed(AppRoutes.productDetailScreen, parameters: {'itemName':item.itemName!,
            'itemImage':item.itemImage!, 'itemDescription': item.itemDescription!, 'itemRating':item.itemRating!.toString(),
            'itemPrice': item.itemPrice.toString(), 'catalogId':item.catalogId!, 'itemId': item.itemId!}),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: getHorizontalSize(
                    16.00,
                  ),
                  top: getVerticalSize(
                    16.00,
                  ),
                  right: getHorizontalSize(
                    16.00,
                  ),
                ),
                child: Image.network(
                  item.itemImage!,
                  height: getSize(
                    133.00,
                  ),
                  width: getSize(
                    133.00,
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
                    8.00,
                  ),
                  right: getHorizontalSize(
                    16.00,
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
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: getHorizontalSize(
                            133.00,
                          ),
                          child: Text(
                            item.itemName!,
                            maxLines: null,
                            textAlign: TextAlign.left,
                            style: AppStyle.textStylePoppinsbold12.copyWith(
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
                              4.00,
                            ),
                            right: getHorizontalSize(
                              10.00,
                            ),
                          ),
                          child: RatingBar.builder(
                            initialRating: item.itemRating!.toDouble(),
                            minRating: 0,
                            direction: Axis.horizontal,
                            allowHalfRating: false,
                            itemSize: getVerticalSize(
                              12.00,
                            ),
                            unratedColor: ColorConstant.blue50,
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
                    Padding(
                      padding: EdgeInsets.only(
                        top: getVerticalSize(
                          16.00,
                        ),
                        right: getHorizontalSize(
                          10.00,
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              right: getHorizontalSize(
                                10.00,
                              ),
                            ),
                            child: Text(
                              '${item.itemPrice.toString()} frs CFA',
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
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
