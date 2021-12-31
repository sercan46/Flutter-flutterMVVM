import 'package:flutter/material.dart';
import 'package:flutter_mvvm/core/extension/string_extension.dart';
import 'package:flutter_mvvm/core/init/lang/locale_keys.g.dart';
import 'package:flutter_mvvm/product/widgets/button/custom_elevation_button.dart';
import 'package:flutter_mvvm/product/widgets/input/custom_form_input.dart';
import 'package:flutter_mvvm/product/widgets/input/custom_form_input_password.dart';
import 'package:flutter_mvvm/product/widgets/text/local_text.dart';
import 'package:flutter_mvvm/views/forgot_password/view-model/forgot_password_view_model.dart';
import 'package:provider/provider.dart';

class ForgotPasswordView extends StatefulWidget {
  const ForgotPasswordView({Key? key}) : super(key: key);

  @override
  _ForgotPasswordViewState createState() => _ForgotPasswordViewState();
}

class _ForgotPasswordViewState extends State<ForgotPasswordView> {
  @override
  Widget build(BuildContext context) {
    final _confirmProviderState = Provider.of<ForgotPasswordViewModel>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.login_forgot_password.locale),
      ),
      body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Consumer<ForgotPasswordViewModel>(
              builder: (context, state, widget) {
            return state.confirmCode != true
                ? _buildColumnSendEmail(_confirmProviderState)
                : _buildColumnConfirmCode(_confirmProviderState);
          })),
    );
  }

  Widget _buildColumnSendEmail(ForgotPasswordViewModel _confirmProviderState) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          LocaleText(text: LocaleKeys.login_forgot_password.locale),
          CustomFormFieldInput(
            data: Theme.of(context),
            title: LocaleKeys.login_email.locale,
            textInputType: TextInputType.emailAddress,
          ),
          CustomElevationButton(
              onPressed: () async {
                await Future.delayed(
                  const Duration(seconds: 1),
                );
                _confirmProviderState.confirmCodeChangeState();
              },
              title: LocaleKeys.forgot_password_submit_verification_code.locale)
        ]);
  }

  Widget _buildColumnConfirmCode(
      ForgotPasswordViewModel _confirmProviderState) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          LocaleText(
              text: LocaleKeys.forgot_password_enter_verification_code.locale),
          CustomFormFieldInput(
            data: Theme.of(context),
            title: LocaleKeys.forgot_password_verification_code.locale,
            textInputType: TextInputType.emailAddress,
          ),
          CustomFormFieldInputPassword(
            title: LocaleKeys.login_password.locale,
          ),
          CustomFormFieldInputPassword(
            title: LocaleKeys.forgot_password_confirm_password.locale,
          ),
          CustomElevationButton(
              onPressed: () async {
                await Future.delayed(
                  const Duration(seconds: 1),
                );
                _confirmProviderState.confirmCodeChangeState();
              },
              title: LocaleKeys.forgot_password_okey.locale)
        ]);
  }
}
