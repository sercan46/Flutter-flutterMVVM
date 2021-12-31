import 'package:flutter/material.dart';

class ForgotPasswordViewModel extends ChangeNotifier {
  bool _confirmCode = false;

  bool get confirmCode => _confirmCode;

  set confirmCode(bool confirmCode) {
    _confirmCode = confirmCode;
    notifyListeners();
  }

  void confirmCodeChangeState() {
    confirmCode = true;
    notifyListeners();
  }
}
