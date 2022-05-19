import '../controller/lailyfa_febrina_card_controller.dart';
import 'package:get/get.dart';

class LailyfaFebrinaCardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LailyfaFebrinaCardController());
  }
}
