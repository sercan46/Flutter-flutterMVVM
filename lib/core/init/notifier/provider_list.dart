import 'package:flutter_mvvm/core/init/navigation/navigation_service.dart';
import 'package:flutter_mvvm/views/forgot_password/view-model/forgot_password_view_model.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

class ApplicationProvider {
  static ApplicationProvider? _instance;
  static ApplicationProvider get instance {
    _instance ??= ApplicationProvider._init();
    return _instance!;
  }

  ApplicationProvider._init();
  List<SingleChildWidget> dependItems = [
    ChangeNotifierProvider(create: (context) => ForgotPasswordViewModel()),
    Provider.value(value: NavigationService.instance)
  ];
}
