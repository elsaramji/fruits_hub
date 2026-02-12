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
        TextFormField;
import 'package:fruits_hub/core/extinctions/app_extinctions.dart';

import '../../states/auth_validation.dart';

class EmailTextInput extends StatelessWidget {
  const EmailTextInput({super.key, required GlobalKey<FormState> formKey})
    : _formKey = formKey;

  final GlobalKey<FormState> _formKey;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
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
