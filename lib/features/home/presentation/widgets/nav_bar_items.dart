import 'package:advanced_salomon_bottom_bar/advanced_salomon_bottom_bar.dart'
    show AdvancedSalomonBottomBarItem;
import 'package:flutter/material.dart' show BuildContext;
import 'package:fruits_hub/core/extensions/context_extensions.dart'
    show ContextExtensions;
import 'package:fruits_hub/core/icons/app_icon_sec.dart';
import 'package:fruits_hub/core/icons/app_icons.dart' show AppIcons;
import '../../../../core/utils/components/nav_bar.dart';

List<AdvancedSalomonBottomBarItem> navBarItemsUserHome(BuildContext context) {
  return [
    navBarItem(
      context,
      title: context.local.home,
      icon: AppIconSec.home_outline,
      activeIcon: AppIconSec.home_1_bold,
    ),
    navBarItem(
      context,
      title: context.local.products,
      icon: AppIcons.category_svg_outline,
      activeIcon: AppIcons.category_svg_bold,
    ),
    navBarItem(
      context,
      title: context.local.cart,
      icon: AppIcons.shopping_cart_svg_outline,
      activeIcon: AppIcons.shopping_cart_svg_bold,
    ),
    navBarItem(
      context,
      title: context.local.profile,
      icon: AppIcons.profile_circle_svg_outline,
      activeIcon: AppIcons.profile_circle_svg_bold,
    ),
  ];
}
