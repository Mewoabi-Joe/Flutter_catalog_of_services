import '../controller/credit_card_and_debit_controller.dart';
import 'package:get/get.dart';

class CreditCardAndDebitBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CreditCardAndDebitController());
  }
}
