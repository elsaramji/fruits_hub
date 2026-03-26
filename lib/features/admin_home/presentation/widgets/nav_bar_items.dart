import 'package:advanced_salomon_bottom_bar/advanced_salomon_bottom_bar.dart'
    show AdvancedSalomonBottomBarItem;
import 'package:flutter/material.dart' show BuildContext;
import 'package:fruits_hub/core/extensions/context_extensions.dart'
    show ContextExtensions;
import 'package:fruits_hub/core/icons/app_icons.dart' show AppIcons;
import '../../../../core/utils/components/nav_bar.dart';

List<AdvancedSalomonBottomBarItem> navBarItemsAdminHome(BuildContext context) {
  return [
    navBarItem(
      context,
      title: context.local.inventory,
      icon: AppIcons.box_add_svg_outline,
      activeIcon: AppIcons.box_add_svg_bold,
    ),
    navBarItem(
      context,
      title: context.local.orders,
      icon: AppIcons.shopping_cart_svg_outline,
      activeIcon: AppIcons.shopping_cart_svg_bold,
    ),
    navBarItem(
      context,
      title: context.local.offers,
      icon: AppIcons.direct_notification_svg_outline,
      activeIcon: AppIcons.direct_notification_svg_bold,
    ),
  ];
}
