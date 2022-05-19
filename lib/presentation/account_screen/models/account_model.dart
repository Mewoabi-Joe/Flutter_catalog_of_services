import 'package:get/get.dart';
import 'account_item_model.dart';

class AccountModel {
  RxList<AccountItemModel> accountItemList =
      RxList.filled(4, AccountItemModel());
}
