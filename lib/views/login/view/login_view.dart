import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_mvvm/core/constants/image/image_manager.dart';
import 'package:flutter_mvvm/core/extension/string_extension.dart';
import 'package:flutter_mvvm/core/init/lang/locale_keys.g.dart';
import 'package:flutter_mvvm/core/init/navigation/navigation_service.dart';
import 'package:flutter_mvvm/product/widgets/button/custom_elevation_button.dart';
import 'package:flutter_mvvm/product/widgets/button/custom_text_button.dart';
import 'package:flutter_mvvm/product/widgets/input/custom_form_input.dart';
import 'package:flutter_mvvm/product/widgets/input/custom_form_input_password.dart';
import 'package:flutter_mvvm/product/widgets/text/local_text.dart';
import 'package:flutter_mvvm/views/forgot_password/view-model/forgot_password_view_model.dart';
import 'package:provider/provider.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent[200],
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(
              ImageManager.instance.logo,
              fit: BoxFit.cover,
              width: 200,
            ),
            LocaleText(
              text: LocaleKeys.login_title.locale,
              style: const TextStyle(
                fontSize: 15,
              ),
            ),
            Column(
              children: [
                CustomFormFieldInput(
                  data: Theme.of(context),
                  title: LocaleKeys.login_email.locale,
                  textInputType: TextInputType.emailAddress,
                ),
                const SizedBox(
                  height: 15,
                ),
                CustomFormFieldInputPassword(
                  title: LocaleKeys.login_password.locale,
                ),
              ],
            ),
            Column(
              children: [
                CustomElevationButton(
                    onPressed: () async {
                      await Future.delayed(const Duration(seconds: 2));
                      print('aaa');
                    },
                    title: LocaleKeys.login_login.locale),
                CustomTextButton(
                  onPressed: () {
                    Provider.of<ForgotPasswordViewModel>(context, listen: false)
                        .confirmCode = false;
                    NavigationService.instance
                        .navigateToPage(path: '/forgot-password');
                  },
                  title: LocaleKeys.login_forgot_password,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
