import '../controller/offer1_controller.dart';
import 'package:get/get.dart';

class Offer1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Offer1Controller());
  }
}
