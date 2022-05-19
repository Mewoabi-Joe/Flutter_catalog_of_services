import '../controller/offer_controller.dart';
import 'package:get/get.dart';

class OfferBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OfferController());
  }
}
