import 'package:get/get.dart';
import 'add_payment_item_model.dart';

class AddPaymentModel {
  RxList<AddPaymentItemModel> addPaymentItemList =
      RxList.filled(3, AddPaymentItemModel());
}
