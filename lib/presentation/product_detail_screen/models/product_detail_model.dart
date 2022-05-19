import 'package:get/get.dart';
import 'group29_item_model.dart';
import 'recomended_item_model.dart';

class ProductDetailModel {
  RxList<Group29ItemModel> group29ItemList =
      RxList.filled(1, Group29ItemModel());

  RxList<RecomendedItemModel> recomendedItemList =
      RxList.filled(3, RecomendedItemModel());
}
