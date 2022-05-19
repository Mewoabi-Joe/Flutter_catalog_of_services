import '/core/app_export.dart';
import 'package:business/presentation/address_screen/models/address_model.dart';

class AddressController extends GetxController with StateMixin<dynamic> {
  Rx<AddressModel> addressModelObj = AddressModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
