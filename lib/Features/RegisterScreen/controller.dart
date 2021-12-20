import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:mat3m/core/CashHelper/dio_helper.dart';
import 'package:mat3m/core/Storage/shared_pref.dart';

class RegisterController {
  late String Name;
  late String email;
  late String password;
  late String phone_Num;
  GlobalKey<FormState> myRegForm = GlobalKey<FormState>();
  Future <String?> Register()async{
    if(!myRegForm.currentState!.validate())return null;
    myRegForm.currentState!.save();
    final body={
      "name":Name,
      "email":email,
      "password":password,
      "phone number":phone_Num
    };
    final respnce=await DioHelper.post("sendOobCode",Date: body);
    if(respnce.statusCode==200){

    }
    try{
      final responce=await DioHelper.post("signUp",Date: body);
      if (responce.statusCode == 200) {
        await Shared.setData(
            email: email,
            ApiToken: responce.data["idToken"],
            uid: responce.data["localId"],
            phone: phone_Num,
            Name: Name);
        return "ok";
      }
       else  return responce.data["error"]["message"];
    } on DioError catch(e){
      print(e.message.toString());
      return e.message;
    }catch(e){
      print(e.toString());
      return e.toString();
    }

  }
}
