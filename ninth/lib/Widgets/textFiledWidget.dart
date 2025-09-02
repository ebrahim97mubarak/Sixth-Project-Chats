// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:ninth/consets.dart';

// ignore: must_be_immutable
class TextFiledWidget extends StatelessWidget {
  TextFiledWidget({super.key, required this.hent, required this.validator, required this.hideText});
  String hent;
  String? Function(String?) validator;
  bool hideText;
  final OutlineInputBorder outlineInputBorder = const OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.white,
    ),
  );
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: hideText,
        validator:validator,
        onFieldSubmitted: (value) {
          password=hent=='Password'? value:password;
          email=hent=='Email'? value:email;
        },
        style: const TextStyle(color: Colors.white),
        decoration: InputDecoration(
          labelText: hent,
          labelStyle: const TextStyle(color: Colors.white, fontSize: 18),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 10, vertical: 25),
          enabledBorder: outlineInputBorder,
          focusedBorder: outlineInputBorder,
        ),
    );
  }
}
