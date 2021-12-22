import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_countdown_timer/countdown_controller.dart';
import 'package:flutter_countdown_timer/countdown_timer_controller.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';
import 'package:mat3m/Widgets/show_snack_bar.dart';
import 'package:mat3m/constant/constant.dart';
import 'package:mat3m/core/BussinessLogicComponent/OTPcubit/otpcubit_cubit.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PinCodeVerificationScreenState extends StatelessWidget {
  var onTapRecognizer;
  TextEditingController textEditingController = TextEditingController();
  late StreamController errorController;

  int counter = 30;

  bool hasError = false;

  String currentText = "";

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OtpcubitCubit(),
      child: BlocConsumer<OtpcubitCubit, OtpcubitState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          var cubit = OtpcubitCubit.get(context);
          return Scaffold(
            backgroundColor: mymaincolor,
            key: scaffoldKey,
            body: GestureDetector(
              onTap: () {},
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: ListView(
                  children: <Widget>[
                    Container(
                      height: MediaQuery.of(context).size.height / 3,
                      child: Image(
                        image: AssetImage("assets/images/verify.png"),
                      ),
                    ),
                    SizedBox(height: 8),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Text(
                        'Phone Number Verification',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 22),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30.0, vertical: 8),
                      child: RichText(
                        text: TextSpan(
                            text: "Enter the code sent to ",
                            children: [],
                            style:
                                TextStyle(color: Colors.white, fontSize: 15)),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Form(
                      key: formKey,
                      child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 30),
                          child: PinCodeTextField(
                            appContext: context,
                            pastedTextStyle: TextStyle(
                              color: Colors.green.shade600,
                              fontWeight: FontWeight.bold,
                            ),
                            length: 6,
                            obscureText: false,
                            obscuringCharacter: '*',
                            animationType: AnimationType.fade,
                            validator: (v) {
                              if (v!.length < 3) {
                                return "Enter Correct Text";
                              } else {
                                return null;
                              }
                            },
                            pinTheme: PinTheme(
                              activeColor: Colors.white,
                              shape: PinCodeFieldShape.box,
                              borderRadius: BorderRadius.circular(5),
                              fieldHeight: 60,
                              fieldWidth: 50,
                              activeFillColor:
                                  hasError ? Colors.orange : Colors.blue,
                            ),
                            cursorColor: Colors.black,
                            animationDuration: Duration(milliseconds: 300),
                            textStyle: TextStyle(fontSize: 20, height: 1.6),
                            backgroundColor: mymaincolor,
                            enableActiveFill: true,
                            controller: textEditingController,
                            keyboardType: TextInputType.number,
                            boxShadows: [
                              BoxShadow(
                                offset: Offset(0, 1),
                                color: Colors.black12,
                                blurRadius: 10,
                              )
                            ],
                            onCompleted: (v) {
                              print("Completed");
                            },
                            onChanged: (value) {
                              print(value);

                              currentText = value;
                            },
                            beforeTextPaste: (text) {
                              print("Allowing to paste $text");
                              //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                              //but you can show anything you want here, like your pop up saying wrong paste format or etc
                              return true;
                            },
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: Text(
                        hasError
                            ? "*Please fill up all the cells properly"
                            : "",
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Didn't receive the code? ",
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        ),
                        cubit.onpress
                            ? CountdownTimer(
                            endTime: cubit.endTime,
                          onEnd: ()=>cubit.changeONpress(),
                               )
                            : TextButton(
                                child: Text(
                                  "RESEND",
                                  style: TextStyle(
                                      color: Color(0xFF91D3B3),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                onPressed: () {

                                },
                              ),
                      ],
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 16.0, horizontal: 30),
                      child: ElevatedButton(
                        onPressed: () {
                          formKey.currentState!.validate();
                          // conditions for validating
                          if (currentText.length != 6 ||
                              currentText != "towtow") {
                            errorController.add(ErrorAnimationType
                                .shake); // Triggering error shake animation

                            hasError = true;
                          } else {
                            hasError = false;
                            showSnackBar("txt", context, isError: true);
                          }
                        },
                        child: Center(
                            child: Text(
                          "VERIFY".toUpperCase(),
                          style: TextStyle(
                              color: mymaincolor,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        )),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.white, elevation: 0),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: mymaincolor, elevation: 0),
                          child: Text("Clear"),
                          onPressed: () {
                            textEditingController.clear();
                          },
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: mymaincolor, elevation: 0),
                          child: Text("Set Text"),
                          onPressed: () {
                            textEditingController.text = "123456";
                          },
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  DefaultFun() {
    TextButton(
      child: Text(
        "RESEND",
        style: TextStyle(
            color: Color(0xFF91D3B3),
            fontWeight: FontWeight.bold,
            fontSize: 16),
      ),
      onPressed: () {
        print("mostafa");
      },
    );
  }
}
