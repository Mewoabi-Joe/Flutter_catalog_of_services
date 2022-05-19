import '../controller/short_by_controller.dart';
import 'package:get/get.dart';

class ShortByBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ShortByController());
  }
}
