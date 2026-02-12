import 'package:flutter/cupertino.dart' show TextInputAction;
import 'package:flutter/material.dart'
    show
        StatefulWidget,
        FormState,
        GlobalKey,
        State,
        BuildContext,
        Widget,
        TextInputType,
        Icon,
        IconButton,
        InputDecoration,
        TextFormField;
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_hub/core/extinctions/app_extinctions.dart';

import '../../icons/app_icons.dart';
import '../../states/auth_validation.dart';
import '../../themes/colors.dart';

class PasswordTextInput extends StatefulWidget {
  const PasswordTextInput({super.key, required GlobalKey<FormState> formKey})
    : _formKey = formKey;

  final GlobalKey<FormState> _formKey;

  @override
  State<PasswordTextInput> createState() => _PasswordTextInputState();
}

class _PasswordTextInputState extends State<PasswordTextInput> {
  bool isPasswordVisible = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.visiblePassword,
      onFieldSubmitted: (value) {
        AuthValidation.submittedFieldValue(value, widget._formKey);
      },
      obscureText: isPasswordVisible,
      validator: (value) {
        return AuthValidation.passwordVaildator(value, context);
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
        hintText: context.local.password,
        suffixIcon: IconButton(
          icon: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w),
            child: Icon(
              isPasswordVisible
                  ? AppIcons.eye_svg_bold
                  : AppIcons.eye_slash_svg_bold,
              size: 24.sp,
              color: AppColors.grayscale300,
            ),
          ),
          onPressed: () {
            setState(() {
              isPasswordVisible = !isPasswordVisible;
            });
          },
        ),
      ),
    );
  }
}
