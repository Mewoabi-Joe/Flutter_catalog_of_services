import '/core/app_export.dart';
import 'package:business/presentation/lailyfa_febrina_card_screen/models/lailyfa_febrina_card_model.dart';
import 'package:flutter/material.dart';

class LailyfaFebrinaCardController extends GetxController
    with StateMixin<dynamic> {
  TextEditingController group109Controller = TextEditingController();

  TextEditingController group110Controller = TextEditingController();

  TextEditingController zipcodeController = TextEditingController();

  TextEditingController group112Controller = TextEditingController();

  Rx<LailyfaFebrinaCardModel> lailyfaFebrinaCardModelObj =
      LailyfaFebrinaCardModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    group109Controller.dispose();
    group110Controller.dispose();
    zipcodeController.dispose();
    group112Controller.dispose();
  }
}
