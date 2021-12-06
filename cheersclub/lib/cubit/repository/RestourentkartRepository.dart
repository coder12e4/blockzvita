import 'dart:convert';

import 'package:cheersclub/cubit/response/response.dart';
import 'package:cheersclub/networking/api_base_helper.dart';
import 'package:cheersclub/networking/endpoints.dart';
import 'package:result_type/result_type.dart';

abstract class RestorentKartRepository {
  Future<Result> restourentList(String? Rest_id);
  Future<Result> DeleteKertItem(String? cart_id);
  Future<Result> restaurantinitiatepayment(
      String restaurant_id,
      String name,
      String delivery_type,
      String phone,
      String phone2,
      String phone3,
      String dialcode,
      String dialcode2,
      String dialcode3,
      String delivery_date,
      String message,
      String note,
      String message_attachment);
}

class RestourentKartrepositoryy extends RestorentKartRepository {
  ApiBaseHelper _helper = ApiBaseHelper();

  @override
  Future<Result> restourentList(String? Rest_id) async {
    String responseString = await (_helper.get(
        APIEndPoints.urlString(EndPoints.viewMyKart) + Rest_id!,
        isHeaderRequired: true));
    Response response = Response.fromJson(json.decode(responseString));
    if (response.status == 1) {
      var k = response.data;
      print(response.data);
      return Success(response.data);
    } else {
      print(response.data);
      return Failure(response.message);
    }
  }

  @override
  Future<Result> DeleteKertItem(String? cart_id) async {
    String responseString = await (_helper.post(
        APIEndPoints.urlString(EndPoints.remoeveitemfromcart),
        {"cart_id": cart_id},
        isHeaderRequired: true));
    Response response = Response.fromJson(json.decode(responseString));
    if (response.status == 1) {
      var k = response.data;
      print(response.data);
      return Success(response.data);
    } else {
      print(response.data);
      return Failure(response.message);
    }
  }

  @override
  Future<Result> restaurantinitiatepayment(
      String restaurant_id,
      String name,
      String delivery_type,
      String phone,
      String phone2,
      String phone3,
      String dialcode,
      String dialcode2,
      String dialcode3,
      String delivery_date,
      String message,
      String note,
      String message_attachment) async {
    String responseString = await (_helper.post(
        APIEndPoints.urlString(EndPoints.remoeveitemfromcart),
        {"cart_id": note},
        isHeaderRequired: true));
    Response response = Response.fromJson(json.decode(responseString));
    if (response.status == 1) {
      var k = response.data;
      print(response.data);
      return Success(response.data);
    } else {
      print(response.data);
      return Failure(response.message);
    }
  }
}
