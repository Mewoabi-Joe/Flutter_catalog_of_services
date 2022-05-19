import '/core/app_export.dart';
import 'package:business/presentation/offer_screen/models/offer_model.dart';

class OfferController extends GetxController with StateMixin<dynamic> {
  Rx<OfferModel> offerModelObj = OfferModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
