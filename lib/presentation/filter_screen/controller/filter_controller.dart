import '/core/app_export.dart';
import 'package:business/presentation/filter_screen/models/filter_model.dart';

class FilterController extends GetxController with StateMixin<dynamic> {
  Rx<FilterModel> filterModelObj = FilterModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
