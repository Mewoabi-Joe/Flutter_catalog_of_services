import '../controller/add_card_controller.dart';
import 'package:get/get.dart';

class AddCardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddCardController());
  }
}
