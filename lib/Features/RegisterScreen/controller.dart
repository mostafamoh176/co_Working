import 'package:flutter/cupertino.dart';

class RegisterController {
  late String Name;
  late String email;
  late String password;
  late String phone_Num;
  GlobalKey<FormState> myRegForm = GlobalKey<FormState>();
  Future <String?> Register()async{
    if(!myRegForm.currentState!.validate())return null;
  }
}
