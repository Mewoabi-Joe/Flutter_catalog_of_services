import '/core/app_export.dart';
import 'package:business/presentation/add_card_screen/models/add_card_model.dart';
import 'package:flutter/material.dart';

class AddCardController extends GetxController with StateMixin<dynamic> {
  TextEditingController group105Controller = TextEditingController();

  TextEditingController group106Controller = TextEditingController();

  TextEditingController group107Controller = TextEditingController();

  TextEditingController group108Controller = TextEditingController();

  Rx<AddCardModel> addCardModelObj = AddCardModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    group105Controller.dispose();
    group106Controller.dispose();
    group107Controller.dispose();
    group108Controller.dispose();
  }
}
