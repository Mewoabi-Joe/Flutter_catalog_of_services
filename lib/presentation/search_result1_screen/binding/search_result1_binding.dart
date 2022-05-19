import '../controller/search_result1_controller.dart';
import 'package:get/get.dart';

class SearchResult1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SearchResult1Controller());
  }
}
