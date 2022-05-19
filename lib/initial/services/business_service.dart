import '../models/business.dart';
import '../shared/connection.dart';
import 'package:http/http.dart';
import 'dart:convert';

class BusinessService {
  final String businessURL = "$hostAndPort/business";

  Future<List<Business>> fetchAllBusinessesOfAUser(int userNumber) async {
    try {
      Response res = await get(Uri.parse('$businessURL/$userNumber'));
      // print('ENDPOINT: $businessURL/$userNumber');
      if (res.statusCode == 200) {
        List<dynamic> body = jsonDecode(res.body);

        List<Business> usersBusinesses = body
            .map(
              (dynamic item) => Business.fromJson(item),
        )
            .toList();

        return usersBusinesses;
      } else {
        print('error status: ${res.statusCode}');
        print('error body: ${jsonDecode(res.body)}');
        throw "Unable to retrieve Businesses: Server Error";
      }
    } catch (e) {
      print(e);
      throw "Unable to retrieve Businesses: Client error";
      // console.log(err.message);
      // console.log(err.response.data);
      // console.log(err.response.status);

    }
  }

  Future<List<Business>> fetchAllBusinessesOfUsers() async {
    try {
      Response res = await get(Uri.parse(businessURL));
      // print('ENDPOINT: $businessURL/$userNumber');
      if (res.statusCode == 200) {
        List<dynamic> body = jsonDecode(res.body);

        List<Business> usersBusinesses = body
            .map(
              (dynamic item) => Business.fromJson(item),
        )
            .toList();

        return usersBusinesses;
      } else {
        print('error status: ${res.statusCode}');
        print('error body: ${jsonDecode(res.body)}');
        throw "Unable to retrieve Businesses: Server Error";
      }
    } catch (e) {
      print(e);
      throw "Unable to retrieve Businesses: Client error";
      // console.log(err.message);
      // console.log(err.response.data);
      // console.log(err.response.status);

    }
  }

  Future<Business> createOrUpdateBusiness(int userNumber,
      String? businessId,
      String businessName,
      String businessDescription,
      String businessLocation,
      List<dynamic> threeImageUrl,
      List<dynamic> itemCategories) async {
    // Endpoint is thesame with update user only parameters differ
    try {
      // print(user.userPhotoUrl);
      final res = await post(Uri.parse(businessURL),
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          },
          body: businessId != null
              ? jsonEncode(<String, dynamic>{
            'userNumber': userNumber,
            'businessId': businessId,
            'businessName': businessName,
            'businessDescription': businessDescription,
            'businessLocation': businessLocation,
            'itemCategories': itemCategories,
            'threeImageUrls': threeImageUrl
          })
              : jsonEncode(<String, dynamic>{
            'userNumber': userNumber,
            'businessName': businessName,
            'businessDescription': businessDescription,
            'businessLocation': businessLocation,
            'itemCategories': itemCategories,
            'threeImageUrls': threeImageUrl
          }));
      if (res.statusCode == 201 ||res.statusCode == 200  ) {
        Map<String, dynamic> body = jsonDecode(res.body);
        Business returnedBusiness = Business.fromJson(body);
        print('Returned user: ${returnedBusiness.toString()}');
        return returnedBusiness;
      } else {
        print('SERVER ERROR:');
        print('error status: ${res.statusCode}');
        print('error body: ${jsonDecode(res.body)}');
        return Business(error: jsonDecode(res.body)['error']);
        // throw "Unable to save business: Server Error";
      }
    } catch (e) {
      print(e);
      throw "Unable to save business: Client error";
      // console.log(err.message);
      // console.log(err.response.data);
      // console.log(err.response.status);

    }
  }

  Future<dynamic> saveImageToBusiness(int userNumber, String businessId,
      String imageUrl) async {
    // Endpoint is thesame with update user only parameters differ
    try {
      // print(user.userPhotoUrl);
      final res = await post(Uri.parse('$businessURL/add_image'),
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          },
          body: jsonEncode(<String, dynamic>{
            'userNumber': userNumber,
            'businessId': businessId,
            'imageUrl': imageUrl,
          }));
      if (res.statusCode == 201) {
        Map<String, dynamic> body = jsonDecode(res.body);
        print('Returned savedImageResult: ${res.body}');
        return res.body;
      } else {
        print('SERVER ERROR:');
        print('error status: ${res.statusCode}');
        print('error body: ${jsonDecode(res.body)}');
        return jsonDecode(res.body)['error'];
        // throw "Unable to save business: Server Error";
      }
    } catch (e) {
      print(e);
      throw "Unable to save Catalog image: Client error";
      // console.log(err.message);
      // console.log(err.response.data);
      // console.log(err.response.status);

    }
  }

  Future<dynamic> deleteImageFromBusiness(int userNumber, String businessId,
      String imageUrl) async {
    // Endpoint is thesame with update user only parameters differ
    try {
      print('userNumber: $userNumber businessId: $businessId imageUrl: $imageUrl');
          final res = await delete(Uri.parse('$businessURL/delete_image'),
    headers: <String, String>{
    'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, dynamic>{
    'userNumber': userNumber,
    'businessId': businessId,
    'imageUrl': imageUrl,
    }));
    if (res.statusCode == 200) {
    Map<String, dynamic> body = jsonDecode(res.body);
    print('Returned deleteImageResult: ${res.body}');
    return res.body;
    } else {
    print('SERVER ERROR:');
    print('error status: ${res.statusCode}');
    print('error body: ${jsonDecode(res.body)}');
    return jsonDecode(res.body)['error'];
    // throw "Unable to save business: Server Error";
    }
    } catch (e) {
    print(e);
    throw "Unable to delete image: Client error";
    // console.log(err.message);
    // console.log(err.response.data);
    // console.log(err.response.status);

    }
  }
}
