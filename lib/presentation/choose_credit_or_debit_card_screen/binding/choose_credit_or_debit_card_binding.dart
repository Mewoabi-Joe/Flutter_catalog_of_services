import '../controller/choose_credit_or_debit_card_controller.dart';
import 'package:get/get.dart';

class ChooseCreditOrDebitCardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChooseCreditOrDebitCardController());
  }
}
