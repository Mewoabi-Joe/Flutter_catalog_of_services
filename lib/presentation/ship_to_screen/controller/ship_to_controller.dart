import '/core/app_export.dart';
import 'package:business/presentation/ship_to_screen/models/ship_to_model.dart';

class ShipToController extends GetxController with StateMixin<dynamic> {
  Rx<ShipToModel> shipToModelObj = ShipToModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
