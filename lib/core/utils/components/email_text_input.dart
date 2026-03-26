import 'package:flutter/material.dart'
    show
        FormState,
        StatelessWidget,
        GlobalKey,
        BuildContext,
        Widget,
        TextInputType,
        TextInputAction,
        TextDirection,
        InputDecoration,
        TextFormField,
        TextEditingController;

import '../../extensions/context_extensions.dart';
import '../../states/auth_validation.dart';

class EmailTextInput extends StatelessWidget {
  const EmailTextInput({
    super.key,
    required GlobalKey<FormState> formKey,
    required TextEditingController emailController,
  }) : _emailController = emailController,
       _formKey = formKey;

  final TextEditingController _emailController;

  final GlobalKey<FormState> _formKey;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _emailController,
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
    );
  }
}
