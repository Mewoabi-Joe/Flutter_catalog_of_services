import 'dart:convert';
import 'dart:io';
import 'package:business/initial/models/item.dart';
import 'package:business/initial/shared/connection.dart';
import 'package:http/http.dart';

class ItemService {
  final String itemURL = "$hostAndPort/item";

  Future<List<Item>> fetchCatalogsItems(String catalogId) async {
    try {
      Response res = await get(Uri.parse('$itemURL/$catalogId'));

      if (res.statusCode == 200) {
        List<dynamic> body = jsonDecode(res.body);

        List<Item> items = body
            .map(
              (dynamic item) => Item.fromJson(item),
            )
            .toList();

        return items;
      } else {
        print('error status: ${res.statusCode}');
        print('error body: ${jsonDecode(res.body)}');
        throw "Unable to retrieve Items: Server Error";
      }
    } catch (e) {
      print(e);
      throw "Unable to retrieve items: Client error";
      // console.log(err.message);
      // console.log(err.response.data);
      // console.log(err.response.status);

    }
  }

  Future<List<Item>> fetchAllItemsInCatalogs() async {
    try {
      Response res = await get(Uri.parse(itemURL));

      if (res.statusCode == 200) {
        List<dynamic> body = jsonDecode(res.body);

        List<Item> items = body
            .map(
              (dynamic item) => Item.fromJson(item),
        )
            .toList();

        return items;
      } else {
        print('error status: ${res.statusCode}');
        print('error body: ${jsonDecode(res.body)}');
        throw "Unable to retrieve Items: Server Error";
      }
    } catch (e) {
      print(e);
      throw "Unable to retrieve items: Client error";
      // console.log(err.message);
      // console.log(err.response.data);
      // console.log(err.response.status);

    }
  }

  Future<List<Item>> fetchSixItemsFromCatalogs() async {
    try {
      Response res = await get(Uri.parse('$itemURL/six_items'));

      if (res.statusCode == 200) {
        List<dynamic> body = jsonDecode(res.body);

        List<Item> items = body
            .map(
              (dynamic item) => Item.fromJson(item),
        )
            .toList();

        return items;
      } else {
        print('error status: ${res.statusCode}');
        print('error body: ${jsonDecode(res.body)}');
        throw "Unable to retrieve Items: Server Error";
      }
    } catch (e) {
      print(e);
      throw "Unable to retrieve items: Client error";
      // console.log(err.message);
      // console.log(err.response.data);
      // console.log(err.response.status);

    }
  }

  Future<Item> createOrUpdateItem(Item item) async {
    // Endpoint is thesame with update item only parameters differ
    try {
      print('item $item');
      var request = MultipartRequest("POST", Uri.parse(itemURL));
      if (item.itemImage != null) {
        request.files.add(MultipartFile.fromBytes(
            "itemImage", File(item.itemImage!).readAsBytesSync(),
            filename: item.itemImage!.split("/").last));
      }
      request.fields['itemDescription'] = item.itemDescription ?? "";
      request.fields['itemName'] = item.itemName ?? "";
      request.fields['catalogId'] = item.catalogId ?? "";
      request.fields['itemPrice'] = item.itemPrice.toString();
      request.fields['itemRating'] = item.itemRating.toString();
      request.fields['itemId'] = item.itemId ?? "";

      var response = await request.send();

      var res = await Response.fromStream(response);
      if (res.statusCode == 201) {
        Map<String, dynamic> body = jsonDecode(res.body);
        Item returnedItem = Item.fromJson(body);
        print('Returned item: ${returnedItem.toString()}');
        return returnedItem;
      } else {
        print('error status: ${res.statusCode}');
        print('error body: ${jsonDecode(res.body)}');
        throw "Unable to save item: Server Error";
      }
    } catch (e) {
      print(e);
      throw "Unable to save item: Client error";
      // console.log(err.message);
      // console.log(err.response.data);
      // console.log(err.response.status);

    }
  }

  Future<Item> deleteItemFromCatalog(Item item) async {
    // Endpoint is thesame with update item only parameters differ
    try {
      // print('item $item');
      var request =
          MultipartRequest("DELETE", Uri.parse('$itemURL/${item.catalogId}'));
      request.fields['itemId'] = item.itemId!;

      var response = await request.send();

      var res = await Response.fromStream(response);
      if (res.statusCode == 200) {
        Map<String, dynamic> body = jsonDecode(res.body);
        Item returnedItem = Item.fromJson(body);
        print('Returned item: ${returnedItem.toString()}');
        return returnedItem;
      } else {
        print('error status: ${res.statusCode}');
        print('error body: ${jsonDecode(res.body)}');
        throw "Unable to delete item: Server Error";
      }
    } catch (e) {
      print(e);
      throw "Unable to delete item: Client error";
      // console.log(err.message);
      // console.log(err.response.data);
      // console.log(err.response.status);

    }
  }
}
