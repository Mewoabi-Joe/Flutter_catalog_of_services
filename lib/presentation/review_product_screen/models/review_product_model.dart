import 'package:get/get.dart';
import 'review_product_item_model.dart';

class ReviewProductModel {
  RxList<ReviewProductItemModel> reviewProductItemList =
      RxList.filled(5, ReviewProductItemModel());
}
