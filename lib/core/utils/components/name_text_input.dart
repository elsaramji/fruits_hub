import 'package:flutter/material.dart'
    show FormState, StatelessWidget, GlobalKey, BuildContext, Widget, TextInputType, InputDecoration, TextFormField, TextInputAction;
import 'package:fruits_hub/core/extinctions/app_extinctions.dart';

import '../../states/auth_validation.dart';

class NameTextInput extends StatelessWidget {
  const NameTextInput({super.key, required GlobalKey<FormState> formKey})
    : _formKey = formKey;
  final GlobalKey<FormState> _formKey;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.name,
      onFieldSubmitted: (value) {
        AuthValidation.submittedFieldValue(value, _formKey);
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(hintText: context.local.name),
      validator: (value) {
        return AuthValidation.nameValidator(value, context);
      },
    );
  }
}
