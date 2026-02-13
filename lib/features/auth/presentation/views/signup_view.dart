import 'package:flutter/material.dart'
    show StatefulWidget, State, BuildContext, Widget, EdgeInsets, Padding, Scaffold, Stack, Positioned;
import 'package:flutter_bloc/flutter_bloc.dart' show  BlocBuilder;
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_hub/core/extinctions/app_extinctions.dart';
import 'package:fruits_hub/features/auth/presentation/state/auth_cubit.dart';
import 'package:fruits_hub/features/auth/presentation/views/login_view.dart'
    show WaitProgress;
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
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) {
        return Scaffold(
          appBar: TextAppBar(title: context.local.createAccount),
          body: Stack(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: SginUpForm(),
              ),
              Positioned.fill(
                child: WaitProgress(isWait: state is AuthLoading),
              ),
            ],
          ),
        );
      },
    );
  }
}
