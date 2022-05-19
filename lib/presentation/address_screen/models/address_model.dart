import 'package:get/get.dart';
import 'address_item_model.dart';

class AddressModel {
  RxList<AddressItemModel> addressItemList =
      RxList.filled(2, AddressItemModel());
}
