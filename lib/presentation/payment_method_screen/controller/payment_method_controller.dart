import '/core/app_export.dart';
import 'package:business/presentation/payment_method_screen/models/payment_method_model.dart';

class PaymentMethodController extends GetxController with StateMixin<dynamic> {
  Rx<PaymentMethodModel> paymentMethodModelObj = PaymentMethodModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
