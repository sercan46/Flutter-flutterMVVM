import 'package:flutter/material.dart';
import 'package:flutter_mvvm/product/widgets/text/local_text.dart';

class CustomTextButton extends TextButton {
  CustomTextButton({Key? key, String? title, Function()? onPressed})
      : super(
            key: key, child: LocaleText(text: '$title'), onPressed: onPressed);
}
