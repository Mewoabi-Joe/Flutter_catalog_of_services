import '../controller/add_payment_controller.dart';
import 'package:get/get.dart';

class AddPaymentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddPaymentController());
  }
}
