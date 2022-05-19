import '../controller/favorite_product_controller.dart';
import 'package:get/get.dart';

class FavoriteProductBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FavoriteProductController());
  }
}
