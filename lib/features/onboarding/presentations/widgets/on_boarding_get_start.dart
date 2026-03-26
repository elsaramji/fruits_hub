import 'package:flutter/material.dart'
    show
        StatelessWidget,
        BuildContext,
        Widget,
        EdgeInsets,
        Text,
        Center,
        SizedBox,
        ElevatedButton,
        Padding,
        Visibility;
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/extensions/context_extensions.dart';
import '../../controls/get_started.dart';

class OnBoardingGetStart extends StatelessWidget {
  const OnBoardingGetStart({super.key, required this.currentPage});

  final int currentPage;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: currentPage == 1,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: ElevatedButton(
          onPressed: () {
            getStarted(context);
          },
          child: SizedBox(
            width: 1.sw,
            child: Center(child: Text(context.local.startNow)),
          ),
        ),
      ),
    );
  }


}
