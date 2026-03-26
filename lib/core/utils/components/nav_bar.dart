import 'package:advanced_salomon_bottom_bar/advanced_salomon_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_hub/core/themes/colors.dart' show AppColors;
import 'package:go_router/go_router.dart';

import '../../extensions/context_extensions.dart';

class NavBar extends StatelessWidget {
  final StatefulNavigationShell navigationShell;
  final List<AdvancedSalomonBottomBarItem> items;
  const NavBar({super.key, required this.navigationShell, required this.items});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: AdvancedSalomonBottomBar(
        margin: EdgeInsets.symmetric(vertical: 17.5.h, horizontal: 8.w),
        decoration: BoxDecoration(
          color: context.colorScheme.surface,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.r),
            topRight: Radius.circular(30.r),
          ),
          boxShadow: [
            BoxShadow(
              color: AppColors.grayscale950.withValues(alpha: 0.1),
              blurRadius: 7,
              offset: const Offset(0, -2),
            ),
          ],
        ),
        currentIndex: navigationShell.currentIndex,
        onTap: (index) => navigationShell.goBranch(index),
        items: items,
      ),
    );
  }

}
  AdvancedSalomonBottomBarItem navBarItem(
    BuildContext context, {
    required String title,
    required IconData icon,
    required IconData activeIcon,
  }) {
    return AdvancedSalomonBottomBarItem(
      icon: Icon(icon, size: 16.sp),
      activeIcon: CircleAvatar(
        backgroundColor: context.colorScheme.primary,
        child: Icon(
          activeIcon,
          size: 16.sp,
          color: context.colorScheme.onPrimary,
        ),
      ),
      title: Text(title),
      selectedColor: AppColors.primary500,
      unselectedColor: AppColors.grayscale500,
    );
  }
