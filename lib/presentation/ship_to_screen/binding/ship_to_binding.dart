import '../controller/ship_to_controller.dart';
import 'package:get/get.dart';

class ShipToBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ShipToController());
  }
}
