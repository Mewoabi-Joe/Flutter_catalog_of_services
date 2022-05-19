import 'package:get/get.dart';
import 'payment_method_item_model.dart';

class PaymentMethodModel {
  RxList<PaymentMethodItemModel> paymentMethodItemList =
      RxList.filled(3, PaymentMethodItemModel());
}
