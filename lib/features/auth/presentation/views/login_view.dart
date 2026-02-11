import 'package:flutter/material.dart'
    show
        StatelessWidget,
        BuildContext,
        Widget,
        Text,
        AppBar,
        EdgeInsets,
        SizedBox,
        ListView,
        Padding,
        Scaffold;
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_hub/core/extinctions/app_extinctions.dart';

import '../../../../core/themes/text_styles.dart';
import '../widgets/auth_form_widget.dart';
import '../widgets/auth_social_button.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.local.login, style: AppTextStyles.bodyLargeBold),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: ListView(
          children: [
            SizedBox(height: 64.h),
            AuthWithEmail(),
            SizedBox(height: 33.h),
            SocialAuthButton(),
          ],
        ),
      ),
    );
  }
}