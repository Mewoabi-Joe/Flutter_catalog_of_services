import 'package:get/get.dart';
import 'favorite_product_item_model.dart';

class FavoriteProductModel {
  RxList<FavoriteProductItemModel> favoriteProductItemList =
      RxList.filled(4, FavoriteProductItemModel());
}
