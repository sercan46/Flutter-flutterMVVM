import 'package:flutter/material.dart';

class CustomFormFieldInput extends TextFormField {
  CustomFormFieldInput(
      {Key? key,
      String? title,
      bool isPassword = false,
      required ThemeData data,
      Widget? suffixIcon,
      TextInputType? textInputType,
      int? maxLength})
      : super(
          key: key,
          obscureText: isPassword,
          keyboardType: textInputType,
          maxLength: maxLength,
          decoration: InputDecoration(
              filled: true,
              fillColor: data.colorScheme.onBackground,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              labelText: '$title',
              suffixIcon: suffixIcon),
        );
}
