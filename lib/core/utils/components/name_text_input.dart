import 'package:flutter/material.dart'
    show FormState, StatelessWidget, GlobalKey, BuildContext, Widget, TextInputType, InputDecoration, TextFormField, TextInputAction, TextEditingController;

import '../../extensions/context_extensions.dart';
import '../../states/auth_validation.dart';

class NameTextInput extends StatelessWidget {
  const NameTextInput({super.key, required GlobalKey<FormState> formKey, required TextEditingController nameController})
    : _formKey = formKey, _nameController = nameController;
  final GlobalKey<FormState> _formKey;
  final TextEditingController _nameController;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _nameController,
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
