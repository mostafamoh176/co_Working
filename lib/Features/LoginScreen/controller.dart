import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:mat3m/constant/constant.dart';
import 'package:mat3m/core/CashHelper/dio_helper.dart';
import 'package:mat3m/core/Storage/shared_pref.dart';

class LoginController {
  bool isLeading = false;
  late String email;
  late String Password;
  final GlobalKey<FormState> myForm = GlobalKey<FormState>();

  Future<String?> signUp() async {
    if (!myForm.currentState!.validate()) return null;
    myForm.currentState!.save();
    final body = {
      "email": email,
      "password": Password,
      "returnSecureToken": true
    };
    try {
      final responce = await DioHelper.get("signUp");
      if (responce.statusCode == 200) {
        await Shared.setDataInLog(
          email: email,
          ApiToken: responce.data["idToken"],
        );
        print("Data inserted Successfully");
        return "ok";
      } else {
        return responce.data["error"]["message"];
      }
    } on DioError catch (e) {
      print("${e.message.toString()}");
      return e.message;
    } catch (e) {
      print(e.toString());
      return e.toString();
    }
  }
}
