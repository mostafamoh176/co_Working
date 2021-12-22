import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OtpTimer extends StatelessWidget {
  final interval = const Duration(seconds: 1);

  final int timerMaxSeconds = 60;

  int currentSeconds = 0;

  String get timerText =>
      '${((timerMaxSeconds - currentSeconds) ~/ 60).toString().padLeft(2, '0')}: ${((timerMaxSeconds - currentSeconds) % 60).toString().padLeft(2, '0')}';

  startTimeout( int milliseconds) {
    var duration = interval;
    Timer.periodic(duration, (timer) {

        print(timer.tick);
        currentSeconds = timer.tick;
        if (timer.tick >= timerMaxSeconds) timer.cancel();

    });
  }

  @override
  void initState() {
    startTimeout(30);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Icon(Icons.timer,color: Colors.blue,),
        SizedBox(
          width: 5,
        ),
        Text(timerText,style: TextStyle(color: Colors.blue),)
      ],
    );
  }
}