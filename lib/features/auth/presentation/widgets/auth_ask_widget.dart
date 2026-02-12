import 'package:flutter/material.dart'
    show StatelessWidget, MainAxisAlignment, BuildContext, Widget, Text, TextButton, Row, Center, VoidCallback;

import '../../../../core/themes/colors.dart';
import '../../../../core/themes/text_styles.dart';

class AuthAsk extends StatelessWidget {
  final String question;
  final String buttonText;
  final VoidCallback onPressed;
  const AuthAsk({super.key, required this.question, required this.buttonText, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(question),
          TextButton(
            onPressed: onPressed,
            child: Text(
              buttonText,
              style: AppTextStyles.bodyBaseSemiBold.copyWith(
                color: AppColors.primary500,
                // fontSize: 13.sp,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
