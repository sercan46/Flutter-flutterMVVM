import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mvvm/core/constants/app/app_constant.dart';
import 'package:flutter_mvvm/core/init/lang/language_manager.dart';
import 'package:flutter_mvvm/core/init/navigation/navigation_route.dart';
import 'package:flutter_mvvm/core/init/navigation/navigation_service.dart';
import 'package:flutter_mvvm/core/init/notifier/provider_list.dart';
import 'package:flutter_mvvm/core/init/theme/custom_theme.dart';
import 'package:provider/provider.dart';

Future<void> _init() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
}

Future<void> main() async {
  await _init();
  runApp(
    MultiProvider(
      providers: [...ApplicationProvider.instance.dependItems],
      child: EasyLocalization(
        child: const MyApp(),
        supportedLocales: LanguageManager.instance.supportedLocales,
        path: AppConstants.LANG_ASSET_PATH,
        startLocale: LanguageManager.instance.trLocale,
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter MVVM',
      debugShowCheckedModeBanner: false,
      theme: customTheme,
      initialRoute: '/login',
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      onGenerateRoute: NavigationRoute.instance.generateRoute,
      navigatorKey: NavigationService.instance.navigatorKey,
    );
  }
}
