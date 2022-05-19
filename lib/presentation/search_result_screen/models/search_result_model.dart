import 'package:get/get.dart';
import 'search_result_item_model.dart';

class SearchResultModel {
  RxList<SearchResultItemModel> searchResultItemList =
      RxList.filled(6, SearchResultItemModel());
}
