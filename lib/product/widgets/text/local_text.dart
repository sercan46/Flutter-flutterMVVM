import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mvvm/core/extension/string_extension.dart';

class LocaleText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  const LocaleText({Key? key, required this.text, this.style})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      text.locale,
      style: style,
    );
  }
}
