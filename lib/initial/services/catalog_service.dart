import 'dart:convert';
import 'dart:io';
import 'package:business/initial/shared/connection.dart';
import 'package:http/http.dart';

import 'package:business/initial/models/catalog.dart';

class CatalogService {
  final String catalogURL = "$hostAndPort/catalog";

  Future<List<Catalog>> fetchBusinessesCatalogs(String businessId) async {
    try {
      Response res = await get(Uri.parse('$catalogURL/$businessId'));

      if (res.statusCode == 200) {
        List<dynamic> body = jsonDecode(res.body);

        List<Catalog> catalogs = body
            .map(
              (dynamic item) => Catalog.fromJson(item),
        )
            .toList();

        return catalogs;
      } else {
        print('error status: ${res.statusCode}');
        print('error body: ${jsonDecode(res.body)}');
        throw "Unable to retrieve Catalogs: Server Error";
      }
    } catch (e) {
      print(e);
      throw "Unable to retrieve catalogs: Client error";
      // console.log(err.message);
      // console.log(err.response.data);
      // console.log(err.response.status);

    }
  }

  Future<List<Catalog>> fetchAllCatalogsOfBusinesses() async {
    try {
      Response res = await get(Uri.parse(catalogURL));

      if (res.statusCode == 200) {
        List<dynamic> body = jsonDecode(res.body);

        List<Catalog> catalogs = body
            .map(
              (dynamic item) => Catalog.fromJson(item),
        )
            .toList();

        return catalogs;
      } else {
        print('error status: ${res.statusCode}');
        print('error body: ${jsonDecode(res.body)}');
        throw "Unable to retrieve Catalogs: Server Error";
      }
    } catch (e) {
      print(e);
      throw "Unable to retrieve catalogs: Client error";
      // console.log(err.message);
      // console.log(err.response.data);
      // console.log(err.response.status);

    }
  }

  Future<Catalog> createOrUpdateCatalog(Catalog catalog) async {
    // Endpoint is thesame with update catalog only parameters differ
    try {
      // print(catalog);
      var request = MultipartRequest("POST", Uri.parse(catalogURL));
      if(catalog.firstImageUrl != null){
        request.files
            .add( MultipartFile.fromBytes("firstImageUrl",File(catalog.firstImageUrl!).readAsBytesSync(),filename: catalog.firstImageUrl!.split("/").last));

      }

      request.fields['catalogDescription'] = catalog.catalogDescription ?? "";
      request.fields['catalogName'] = catalog.catalogName ?? "";
      request.fields['businessId'] = catalog.businessId ?? "";
      request.fields['catalogId'] = catalog.catalogId ?? "";


      var response = await request.send();

      var res = await Response.fromStream(response);
      if (res.statusCode == 201) {
        Map<String, dynamic> body = jsonDecode(res.body);
        Catalog returnedCatalog = Catalog.fromJson(body);
        // print('Returned catalog: ${returnedCatalog.toString()}');
        return returnedCatalog;
      } else {
        print('error status: ${res.statusCode}');
        print('error body: ${jsonDecode(res.body)}');
        throw "Unable to save catalog: Server Error";
      }
    } catch (e) {
      print(e);
      throw "Unable to save catalog: Client error";
      // console.log(err.message);
      // console.log(err.response.data);
      // console.log(err.response.status);

    }
  }

  Future<Catalog> deleteCatalogFromBusiness(Catalog catalog) async {
    // Endpoint is thesame with update catalog only parameters differ
    try {
      // print('catalog $catalog');
      var request =
      MultipartRequest("DELETE", Uri.parse('$catalogURL/${catalog.businessId}'));
      request.fields['catalogId'] = catalog.catalogId!;

      var response = await request.send();

      var res = await Response.fromStream(response);
      if (res.statusCode == 200) {
        Map<String, dynamic> body = jsonDecode(res.body);
        Catalog returnedCatalog = Catalog.fromJson(body);
        // print('Returned catalog: ${returnedCatalog.toString()}');
        return returnedCatalog;
      } else {
        print('error status: ${res.statusCode}');
        print('error body: ${jsonDecode(res.body)}');
        throw "Unable to delete catalog: Server Error";
      }
    } catch (e) {
      print(e);
      throw "Unable to delete catalog: Client error";
      // console.log(err.message);
      // console.log(err.response.data);
      // console.log(err.response.status);

    }
  }

}
