import 'package:flutter/material.dart';
import 'package:mat3m/Features/LoginScreen/view.dart';
import 'package:mat3m/Features/RegisterScreen/controller.dart';
import 'package:mat3m/Widgets/default_button.dart';
import 'package:mat3m/Widgets/default_text_form.dart';
import 'package:mat3m/core/Validator/validator.dart';

class RegisterScreen extends StatelessWidget {
  RegisterController _registerController = RegisterController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff1E4E50),
        body: SingleChildScrollView(
          child: Form(
            key: _registerController.myRegForm,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  Text(
                    "Register with Us,",
                    style: Theme
                        .of(context)
                        .textTheme
                        .bodyText1,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Space Co-Working",
                    style: Theme
                        .of(context)
                        .textTheme
                        .headline2,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Text("Name"),
                    ),
                  ),
                  DefaultTextFormField(
                    hint: "Enter Here Name",
                    save: (String? value) {
                      _registerController.Name == value;
                    },
                    valid: Validator.name,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Text("Email Address"),
                    ),
                  ),
                  DefaultTextFormField(
                    hint: "Enter Here Your Mail",
                    save: (String? value) {
                      _registerController.email == value;
                    },
                    valid: Validator.email,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Text("Phone"),
                    ),
                  ),
                  DefaultTextFormField(
                    hint: "Enter Here Number",
                    valid: Validator.phone,
                    save: (String? value) {
                      _registerController.phone_Num == value;
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Text("Password"),
                    ),
                  ),
                  DefaultTextFormField(
                    hint: "Enter Here Your Password",
                    valid: Validator.password,
                    save: (String? value) {
                      _registerController.password == value;
                    },),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Forget Password ?",
                          style: Theme
                              .of(context)
                              .textTheme
                              .bodyText2,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  MaterialButton(
                    onPressed: () {
                      _registerController.Register();
                    },
                    child: Text(
                      "Register",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff1E4E50),
                      ),
                    ),
                    height: 50,
                    color: Colors.white,
                    minWidth: double.infinity,
                    shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  Text(
                    "Or Continue Via",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    DefaultButton(txt: "Google", onpress: () {},),
                  DefaultButton(txt: "Facebook", onpress: () {})
                ],
              ),
              Row(
                children: [
                  Text("Are You Have An Account? ",
                      style: Theme
                          .of(context)
                          .textTheme
                          .subtitle1),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                                builder: (context) => LoginScreen()));
                      },
                      child: Text(
                        "Login?",
                        style: Theme
                            .of(context)
                            .textTheme
                            .subtitle2,
                      ))
                ],
              )
              ],
            ),
          ),
        ),
      ),
    ),);
  }
}
