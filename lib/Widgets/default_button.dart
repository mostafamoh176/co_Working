import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  late String txt;
  late Function() onpress;

  DefaultButton({required this.onpress, required this.txt});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onpress,
      child: Text(
        "$txt",
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      height: 50,
      color: Color(0xff1E4E50),
      minWidth: 180,
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
