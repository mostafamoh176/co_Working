import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mat3m/Features/FirstScreen/view.dart';
import 'package:mat3m/Features/RegisterScreen/view.dart';
import 'package:mat3m/Widgets/default_button.dart';
import 'package:mat3m/Widgets/default_text_form.dart';
import 'package:mat3m/Widgets/show_snack_bar.dart';
import 'package:mat3m/core/Validator/validator.dart';

import 'controller.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    LoginController loginController = LoginController();
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff1E4E50),
        body: SingleChildScrollView(
          child: Form(
            key: loginController.myForm,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Welcome back,",
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Space Co-Working",
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Text("Email Address"),
                    ),
                  ),
                  DefaultTextFormField(
                    valid: Validator.email,
                    save: (String? v) {
                      loginController.email = v!;
                    },
                    hint: 'Enter Here Your Mail',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Text("Password"),
                    ),
                  ),
                  DefaultTextFormField(
                    valid: Validator.password,
                    save: (String? v) {
                      loginController.Password = v!;
                    },
                    hint: 'Enter Here Your Password',
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Forget Password ?",
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  loginController.isLeading
                      ? CupertinoActivityIndicator()
                      : MaterialButton(
                          // onPressed: () async{
                          //   setState(() {
                          //     loginController.isLeading=true;
                          //   });
                          // final message=await loginController.signUp();
                          //   if(message=="ok"){
                          //     print("the process is fully completed");
                          //   }else if(message!=null && message.isNotEmpty ){
                          //     print("Eroroo");
                          //   }
                          //   setState(() {
                          //     loginController.isLeading=false;
                          //   });
                          // },
                          onPressed: () async {
                            setState(() => loginController.isLeading = true);
                            final message = await loginController.signUp();
                            if (message == "ok") {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => FirstLayer()));
                              print(
                                  "this process is coplar${loginController.isLeading}");
                            } else if (message != null && message.isNotEmpty) {
                              showSnackBar(message, context, isError: true);
                            }
                            setState(() => loginController.isLeading = false);
                          },
                          child: const Text(
                            "Login",
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
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    "Or Continue Via",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      DefaultButton(txt: "Google", onpress: () {}),
                      DefaultButton(txt: "Facebook", onpress: () {})
                    ],
                  ),
                  Row(
                    children: [
                      Text("Are You Come First time? ",
                          style: Theme.of(context).textTheme.subtitle1),
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (context) => RegisterScreen()));
                          },
                          child: Text(
                            "Register?",
                            style: Theme.of(context).textTheme.subtitle2,
                          ))
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
