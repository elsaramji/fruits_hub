import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_hub/core/extinctions/app_extinctions.dart';
import 'package:fruits_hub/core/icons/app_icons.dart';
import 'package:fruits_hub/core/themes/text_styles.dart';

import '../../../../core/themes/colors.dart' show AppColors;

class UserHomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String userName;
  final String? userImage;
  const UserHomeAppBar({super.key, required this.userName, this.userImage});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 54.h,
      margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),

      child: Row(
        children: [
          CircleAvatar(
            radius: 22.r,
            // backgroundColor: AppColors.primary500,
            backgroundImage: userImage != null && userImage!.isNotEmpty
                ? NetworkImage(userImage!)
                : const AssetImage("assets/images/user.png"),
          ),
          SizedBox(width: 8.w),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                context.local.welcome,
                style: AppTextStyles.bodyBaseRegular.copyWith(
                  color: AppColors.grayscale400,
                ),
              ),
              Text(userName, style: context.textTheme.headlineSmall),
            ],
          ),
          Spacer(),
          IconButton(
            style: IconButton.styleFrom(
              backgroundColor: context.colorScheme.secondaryContainer,
              shape: const CircleBorder(),
              maximumSize: Size.fromHeight(34.h),
              iconSize: 20.sp,
            ),
            onPressed: () {},
            icon: Icon(
              AppIcons.notification_svg_outline,
              color: context.colorScheme.primary,
            ),
          ),
        ],
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(88.h);
}
