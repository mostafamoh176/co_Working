import 'package:flutter/material.dart';

class DefaultTextFormField extends StatelessWidget {
  final String hint;
  final String? Function(String?)? valid;
  Function(String?) save;

  DefaultTextFormField(
      {required this.hint, required this.save, required this.valid});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: valid,
      onSaved: save,
      style: const TextStyle(color: Colors.white, fontSize: 20),
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.grey.withOpacity(0.25),
        hintText: hint,
        hintStyle: TextStyle(color: Colors.grey),
        focusedBorder: InputBorderColor(color: Colors.blue),
        errorBorder: InputBorderColor(color: Colors.red),
      ),
    );
  }

  InputBorderColor({color}) {
    BorderSide(color: color);
    BorderRadius.circular(8);
  }
}
