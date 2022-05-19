import '/core/app_export.dart';
import 'package:business/presentation/add_address_screen/models/add_address_model.dart';
import 'package:flutter/material.dart';

class AddAddressController extends GetxController with StateMixin<dynamic> {
  TextEditingController group95Controller = TextEditingController();

  TextEditingController group103Controller = TextEditingController();

  TextEditingController group96Controller = TextEditingController();

  TextEditingController group97Controller = TextEditingController();

  TextEditingController group98Controller = TextEditingController();

  TextEditingController group99Controller = TextEditingController();

  TextEditingController group100Controller = TextEditingController();

  TextEditingController group101Controller = TextEditingController();

  TextEditingController group102Controller = TextEditingController();

  Rx<AddAddressModel> addAddressModelObj = AddAddressModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    group95Controller.dispose();
    group103Controller.dispose();
    group96Controller.dispose();
    group97Controller.dispose();
    group98Controller.dispose();
    group99Controller.dispose();
    group100Controller.dispose();
    group101Controller.dispose();
    group102Controller.dispose();
  }
}
