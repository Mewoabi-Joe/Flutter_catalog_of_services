import '../controller/write_review_fill_controller.dart';
import 'package:get/get.dart';

class WriteReviewFillBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WriteReviewFillController());
  }
}
