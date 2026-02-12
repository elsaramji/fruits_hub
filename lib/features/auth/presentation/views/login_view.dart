import 'package:flutter/material.dart'
    show
        StatelessWidget,
        BuildContext,
        Widget,
        EdgeInsets,
        SizedBox,
        ListView,
        Padding,
        Scaffold,
        ScrollPhysics;
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_hub/core/extinctions/app_extinctions.dart';
import '../../../../core/utils/components/text_app_bar.dart';
import '../widgets/login_form_widget.dart';
import '../widgets/auth_social_button.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TextAppBar(title: context.local.login),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: ListView(
          physics: ScrollPhysics(),
          children: [
            LoginForm(),
            SizedBox(height: 33.h),
            SocialAuthButton(),
          ],
        ),
      ),
    );
  }
}
