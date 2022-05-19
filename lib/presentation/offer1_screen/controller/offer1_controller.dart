import '/core/app_export.dart';
import 'package:business/presentation/offer1_screen/models/offer1_model.dart';

class Offer1Controller extends GetxController with StateMixin<dynamic> {
  Rx<Offer1Model> offer1ModelObj = Offer1Model().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
