import 'package:flutter/material.dart';
<<<<<<< HEAD
=======
import 'package:mat3m/Features/FirstScreen/view.dart';
>>>>>>> 1592828 (first)
import 'package:mat3m/Features/LoginScreen/view.dart';
import 'package:mat3m/Features/RegisterScreen/controller.dart';
import 'package:mat3m/Widgets/default_button.dart';
import 'package:mat3m/Widgets/default_text_form.dart';
<<<<<<< HEAD
=======
import 'package:mat3m/Widgets/show_snack_bar.dart';
>>>>>>> 1592828 (first)
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
<<<<<<< HEAD
                    style: Theme
                        .of(context)
                        .textTheme
                        .bodyText1,
=======
                    style: Theme.of(context).textTheme.bodyText1,
>>>>>>> 1592828 (first)
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Space Co-Working",
<<<<<<< HEAD
                    style: Theme
                        .of(context)
                        .textTheme
                        .headline2,
=======
                    style: Theme.of(context).textTheme.headline2,
>>>>>>> 1592828 (first)
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
<<<<<<< HEAD
                      _registerController.Name == value;
=======
                      _registerController.Name = value!;
>>>>>>> 1592828 (first)
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
<<<<<<< HEAD
                      _registerController.email == value;
=======
                      _registerController.email = value!;
>>>>>>> 1592828 (first)
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
<<<<<<< HEAD
                      _registerController.phone_Num == value;
=======
                      _registerController.phone_Num = value!;
>>>>>>> 1592828 (first)
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
<<<<<<< HEAD
                      _registerController.password == value;
                    },),
=======
                      _registerController.password = value!;
                    },
                  ),
>>>>>>> 1592828 (first)
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Forget Password ?",
<<<<<<< HEAD
                          style: Theme
                              .of(context)
                              .textTheme
                              .bodyText2,
=======
                          style: Theme.of(context).textTheme.bodyText2,
>>>>>>> 1592828 (first)
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  MaterialButton(
<<<<<<< HEAD
                    onPressed: () {
                      _registerController.Register();
=======
                    onPressed: () async {
                      final message = await _registerController.Register();
                      if (message == "ok") {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FirstLayer()));
                      }else if(message!=null && message.isNotEmpty){
                        print("mostaaaaaaaaaa");
                        showSnackBar(message, context, isError: true);
                      }
>>>>>>> 1592828 (first)
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
<<<<<<< HEAD
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
=======
                      DefaultButton(
                        txt: "Google",
                        onpress: () {},
                      ),
                      DefaultButton(txt: "Facebook", onpress: () {})
                    ],
                  ),
                  Row(
                    children: [
                      Text("Are You Have An Account? ",
                          style: Theme.of(context).textTheme.subtitle1),
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (context) => LoginScreen()));
                          },
                          child: Text(
                            "Login?",
                            style: Theme.of(context).textTheme.subtitle2,
                          ))
                    ],
                  )
                ],
              ),
>>>>>>> 1592828 (first)
            ),
          ),
        ),
      ),
<<<<<<< HEAD
    ),);
=======
    );
>>>>>>> 1592828 (first)
  }
}
