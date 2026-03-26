import 'package:flutter/material.dart'
    show
        BuildContext,
        Column,
        CrossAxisAlignment,
        ElevatedButton,
        Form,
        FormState,
        GlobalKey,
        ListView,
        MainAxisAlignment,
        Size,
        SizedBox,
        State,
        StatefulWidget,
        Text,
        Widget,
        ScrollPhysics,
        TextEditingController;
import 'package:flutter_bloc/flutter_bloc.dart' show ReadContext;
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_hub/features/auth/presentation/state/auth_cubit.dart'
    show AuthCubit;
import 'package:go_router/go_router.dart';
import '../../../../core/config/routes/router.dart';
import '../../../../core/extensions/context_extensions.dart';
import '../../../../core/utils/components/email_text_input.dart';
import '../../../../core/utils/components/name_text_input.dart';
import '../../../../core/utils/components/password_text_input.dart';
import 'auth_ask_widget.dart';

class SginUpForm extends StatefulWidget {
  const SginUpForm({super.key});
  @override
  State<SginUpForm> createState() => _SginUpFormState();
}

class _SginUpFormState extends State<SginUpForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: ScrollPhysics(),
      children: [
        Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            spacing: 16.h,
            children: [
              NameTextInput(formKey: _formKey, nameController: _nameController),
              EmailTextInput(
                formKey: _formKey,
                emailController: _emailController,
              ),
              PasswordTextInput(
                formKey: _formKey,
                passwordController: _passwordController,
              ),
              SizedBox(height: 33.h),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    context.read<AuthCubit>().register(
                      name: _nameController.text,
                      email: _emailController.text,
                      password: _passwordController.text,
                    );
                  }
                },
                style: ElevatedButton.styleFrom(fixedSize: Size(1.sw, 56.h)),
                child: Text(context.local.createAccount),
              ),
              SizedBox(height: 16.h),
              AuthAsk(
                question: context.local.alreadyHaveAccount,
                buttonText: context.local.login,
                onPressed: () {
                  context.go(RouterName.login);
                },
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
