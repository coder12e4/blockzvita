import 'dart:async';
import 'dart:convert';

import 'package:cheersclub/cubit/response/response.dart';
import 'package:cheersclub/networking/api_base_helper.dart';
import 'package:cheersclub/networking/endpoints.dart';
import 'package:result_type/result_type.dart';

abstract class ForgetPassRepository {
  Future<Result> ForgetPassReo(String? email);
}

class ForgetPassRe extends ForgetPassRepository {
  ApiBaseHelper _helper = ApiBaseHelper();

  @override
  Future<Result> ForgetPassReo(
    String? email,
  ) async {
    String responseString =
        await (_helper.post(APIEndPoints.urlString(EndPoints.forgetPass), {
      "email": email,
    }));
    Response response = Response.fromJson(json.decode(responseString));
    if (response.status == 1) {
      // String token = response.data["token"];
      // saveToken(token);
      // UserManager.instance.setUserLoggedIn(true);
      print(response.data);
      return Success(response.data);
    } else {
      print(response.data);
      return Failure(response.message);
    }
  }
}
