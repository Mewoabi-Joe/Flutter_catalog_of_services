import 'package:get/get.dart';
import 'cart_item_model.dart';

class CartModel {
  RxList<CartItemModel> cartItemList = RxList.filled(2, CartItemModel());
}
