import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_hub/core/utils/components/text_app_bar.dart';


import '../../../../core/extensions/context_extensions.dart';
import '../../../../core/icons/app_icons.dart';
import '../widgets/admin_home_view_body.dart';

class AdminHomeView extends StatelessWidget {
  const AdminHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TextAppBar(title: context.local.inventory, height: 50.h),
      body: AdminHomeViewBody(),
      floatingActionButton: ElevatedButton(
        child: Icon(AppIcons.shop_add_svg_outline, size: 24.sp),

        onPressed: () {},
      ),
    );
  }
}
