import '../controller/review_product_controller.dart';
import 'package:get/get.dart';

class ReviewProductBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ReviewProductController());
  }
}
