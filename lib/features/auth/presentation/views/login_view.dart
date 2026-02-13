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
        ScrollPhysics,
        ScaffoldMessenger,
        SnackBar;
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart' show SpinKitFadingCircle;
import 'package:fruits_hub/core/config/routes/router.dart' show RouterName;
import 'package:fruits_hub/core/extinctions/app_extinctions.dart';
import 'package:fruits_hub/features/auth/presentation/state/auth_cubit.dart'
    show AuthCubit, AuthFailure, AuthLoading, AuthState;
import 'package:go_router/go_router.dart' show GoRouterHelper;
import '../../../../core/themes/colors.dart';
import '../../../../core/utils/components/text_app_bar.dart';
import '../widgets/login_form_widget.dart';
import '../widgets/auth_social_button.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state.isAuthenticated) {
          context.go(RouterName.home);
        } else if (state is AuthFailure) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.error.message, textAlign: TextAlign.left),
            ),
          );
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: TextAppBar(title: context.local.login),
          body: Stack(
            children: [
              Padding(
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

class WaitProgress extends StatelessWidget {
  final bool isWait;
  const WaitProgress({super.key, required this.isWait});

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: isWait,
      child: Container(
        alignment: Alignment.center,
        color: AppColors.grayscale100.withAlpha(100),
        child: SpinKitFadingCircle(color: AppColors.green600, size: 50.r),
      ),
    );
  }
}
