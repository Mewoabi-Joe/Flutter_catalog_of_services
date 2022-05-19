import 'package:get/get.dart';
import 'group256_item_model.dart';
import 'group257_item_model.dart';

class ExploreModel {
  RxList<Group256ItemModel> group256ItemList =
      RxList.filled(6, Group256ItemModel());

  RxList<Group257ItemModel> group257ItemList =
      RxList.filled(7, Group257ItemModel());
}
