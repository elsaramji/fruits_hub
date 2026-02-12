import 'package:flutter/material.dart'
    show
        StatefulWidget,
        FormState,
        State,
        GlobalKey,
        BuildContext,
        Widget,
        MainAxisAlignment,
        CrossAxisAlignment,
        Text,
        TextButton,
        SizedBox,
        ElevatedButton,
        Size,
        Column,
        Form;
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_hub/core/extinctions/app_extinctions.dart';
import 'package:fruits_hub/core/themes/colors.dart' show AppColors;
import 'package:fruits_hub/core/themes/text_styles.dart' show AppTextStyles;
import 'package:go_router/go_router.dart';
import '../../../../core/config/routes/router.dart';
import '../../../../core/utils/components/email_text_input.dart';
import '../../../../core/utils/components/password_text_input.dart';
import 'auth_ask_widget.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});
  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        spacing: 16.h,
        children: [
          EmailTextInput(formKey: _formKey),
          PasswordTextInput(formKey: _formKey),
          TextButton(
            onPressed: () {},
            child: Text(
              context.local.forgotPassword,
              style: AppTextStyles.bodyBaseSemiBold.copyWith(
                color: AppColors.green600,
                fontSize: 13.sp,
              ),
            ),
          ),
          SizedBox(height: 8.h),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {}
            },
            style: ElevatedButton.styleFrom(fixedSize: Size(1.sw, 56.h)),
            child: Text(context.local.login),
          ),
          SizedBox(height: 8.h),
          AuthAsk(
            question: context.local.dontHaveAccount,
            buttonText: context.local.createAccount,
            onPressed: () {
              context.push(RouterName.register);
            },
          ),
        ],
      ),
    );
  }
}
