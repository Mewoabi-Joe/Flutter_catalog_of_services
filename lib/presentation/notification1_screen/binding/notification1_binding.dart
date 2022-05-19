import '../controller/notification1_controller.dart';
import 'package:get/get.dart';

class Notification1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Notification1Controller());
  }
}
