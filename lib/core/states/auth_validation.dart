import 'package:flutter/material.dart' show BuildContext, FormState, GlobalKey;

import '../extensions/context_extensions.dart';

abstract final class AuthValidation {
  static String? passwordVaildator(String? value, BuildContext context) {
    if (value == null || value.isEmpty) {
      return context.local.pleaseEnterYourPassword;
    } else if (value.length < 8) {
      return context.local.passwordMustBeValid;
    }
    return null;
  }

  static String? nameValidator(String? value, BuildContext context) {
    if (value == null || value.isEmpty) {
      return context.local.pleaseEnterYourName;
    }
    return null;
  }

  static String? emailValidatro(String? value, BuildContext context) {
    if (value == null || value.isEmpty) {
      return context.local.pleaseEnterYourEmail;
    } else if (!value.contains('@') && !value.contains('.')) {
      return context.local.emailMustBeValid;
    }

    return null;
  }
   static void submittedFieldValue(String value, GlobalKey<FormState> formKey) {
    if (formKey.currentState!.validate() && value.isNotEmpty) {
      formKey.currentState!.save();
    }
  }
}
