import 'package:flutter/material.dart'
    show
        StatefulWidget,
        State,
        BuildContext,
        Widget,
        EdgeInsets,
        Padding,
        Scaffold;
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_hub/core/extinctions/app_extinctions.dart';
import '../../../../core/utils/components/text_app_bar.dart';
import '../widgets/signup_form_widget.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TextAppBar(title: context.local.createAccount),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: SginUpForm(),
      ),
    );
  }
}
