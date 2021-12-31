import 'package:flutter/material.dart';
import 'package:flutter_mvvm/core/constants/navigation/navigation_constants.dart';
import 'package:flutter_mvvm/views/forgot_password/view/forgot_password_view.dart';
import 'package:flutter_mvvm/views/login/view/login_view.dart';

class NavigationRoute {
  static final NavigationRoute _instance = NavigationRoute._init();
  static NavigationRoute get instance => _instance;
  NavigationRoute._init();

  Route<dynamic> generateRoute(RouteSettings args) {
    switch (args.name) {
      case NavigationConstants.LOGIN:
        return _normalNavigate(LoginView(), args);
      case NavigationConstants.FORGOT_PASSWORD:
        return _normalNavigate(ForgotPasswordView(), args);
      default:
        return MaterialPageRoute(
            builder: (context) => const Scaffold(
                  body: Center(
                    child: Text("Sayfa bulunamadı."),
                  ),
                ));
    }
  }

  //Flutter default navigate işlemi
  MaterialPageRoute _normalNavigate(Widget widget, RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => widget, settings: settings);
  }
}
