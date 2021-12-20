import 'package:flutter/material.dart';

showSnackBar(txt, context, {required bool isError}) {
  return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(txt),
    backgroundColor: isError ? Colors.red : Colors.blue,
  ));
}
