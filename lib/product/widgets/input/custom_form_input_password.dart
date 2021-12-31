import 'package:flutter/material.dart';
import 'package:flutter_mvvm/product/widgets/icon/secure_icon.dart';
import 'package:flutter_mvvm/product/widgets/input/custom_form_input.dart';

class CustomFormFieldInputPassword extends StatefulWidget {
  final String? title;

  const CustomFormFieldInputPassword({Key? key, this.title}) : super(key: key);

  @override
  _CustomFormFieldInputPasswordState createState() =>
      _CustomFormFieldInputPasswordState();
}

class _CustomFormFieldInputPasswordState
    extends State<CustomFormFieldInputPassword> {
  bool _isSecureText = false;
  void _changeSecure() {
    setState(() {
      _isSecureText = !_isSecureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CustomFormFieldInput(
      title: widget.title,
      data: Theme.of(context),
      isPassword: _isSecureText,
      suffixIcon: IconButton(
          onPressed: () {
            _changeSecure();
          },
          icon: SecureIcon(
            isSecure: _isSecureText,
          )),
    );
  }
}
