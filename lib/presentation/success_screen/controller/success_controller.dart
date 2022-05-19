import '/core/app_export.dart';
import 'package:business/presentation/success_screen/models/success_model.dart';

class SuccessController extends GetxController with StateMixin<dynamic> {
  Rx<SuccessModel> successModelObj = SuccessModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
