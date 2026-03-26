import 'package:flutter/material.dart'
    show
        StatelessWidget,
        Widget,
        BuildContext,
        Container,
        EdgeInsets,
        Column,
        SizedBox,
        BoxFit,
        Text,
        TextAlign;
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/extensions/context_extensions.dart';

class OnboardingBody extends StatelessWidget {
  final String svg;
  final Widget title;
  final String description;

  const OnboardingBody({
    required this.svg,
    required this.title,
    required this.description,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1.sh,
      width: 1.sw,
      padding: EdgeInsets.symmetric(horizontal: 32.w, vertical: 100.h),
      child: Column(
        children: [
          SizedBox(height: 44.h),
          SvgPicture.asset(svg, fit: BoxFit.contain, width: 270.w),
          SizedBox(height: 32.h),
          title,
          SizedBox(height: 24.h),
          Text(
            textAlign: TextAlign.center,
            description,
            style: context.textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}
