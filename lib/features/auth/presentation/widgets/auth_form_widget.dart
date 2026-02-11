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
        TextInputType,
        TextInputAction,
        TextDirection,
        InputDecoration,
        TextFormField,
        Icon,
        IconButton,
        Text,
        TextButton,
        SizedBox,
        ElevatedButton,
        Size,
        Row,
        Center,
        Column,
        Form;
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_hub/core/extinctions/app_extinctions.dart';
import 'package:fruits_hub/core/icons/app_icons.dart' show AppIcons;
import 'package:fruits_hub/core/themes/colors.dart' show AppColors;
import 'package:fruits_hub/core/themes/text_styles.dart' show AppTextStyles;

import '../../../../core/states/auth_validation.dart';

class AuthWithEmail extends StatefulWidget {
  const AuthWithEmail({super.key});

  @override
  State<AuthWithEmail> createState() => _AuthWithEmailState();
}

class _AuthWithEmailState extends State<AuthWithEmail> {
  bool isPasswordVisible = true;
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
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            onFieldSubmitted: (value) {
              AuthValidation.submittedFieldValue(value, _formKey);
            },

            textInputAction: TextInputAction.next,
            textDirection: TextDirection.ltr,
            decoration: InputDecoration(hintText: context.local.email),
            validator: (value) {
              return AuthValidation.emailValidatro(value, context);
            },
          ),
          TextFormField(
            keyboardType: TextInputType.visiblePassword,
            onFieldSubmitted: (value) {
              AuthValidation.submittedFieldValue(value, _formKey);
            },
            obscureText: isPasswordVisible,
            validator: (value) {
              return AuthValidation.passwordVaildator(value, context);
            },
            decoration: InputDecoration(
              hintText: context.local.password,
              suffixIcon: IconButton(
                icon: Icon(
                  isPasswordVisible
                      ? AppIcons.eye_svg_bold
                      : AppIcons.eye_slash_svg_bold,
                  size: 24.sp,
                  color: AppColors.grayscale300,
                ),
                onPressed: () {
                  setState(() {
                    isPasswordVisible = !isPasswordVisible;
                  });
                },
              ),
            ),
          ),
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
          SizedBox(height: 33.h),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {}
            },
            style: ElevatedButton.styleFrom(fixedSize: Size(1.sw, 56.h)),
            child: Text(context.local.login),
          ),
          SizedBox(height: 33.h),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(context.local.dontHaveAccount),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    context.local.createAccount,
                    style: AppTextStyles.bodyBaseSemiBold.copyWith(
                      color: AppColors.primary500,
                      // fontSize: 13.sp,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
