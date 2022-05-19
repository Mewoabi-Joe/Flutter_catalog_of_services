import '../controller/list_category_controller.dart';
import 'package:get/get.dart';

class ListCategoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ListCategoryController());
  }
}
