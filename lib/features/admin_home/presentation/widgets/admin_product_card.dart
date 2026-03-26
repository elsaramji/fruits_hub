import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_hub/core/extensions/context_extensions.dart';
import 'package:fruits_hub/core/themes/colors.dart';
import 'package:fruits_hub/core/themes/text_styles.dart';

class AdminProductCard extends StatelessWidget {
  final String imageUrl;
  final String name;
  final num price;
  final String? unit;
  final String quantity;

  const AdminProductCard({
    super.key,
    this.imageUrl = 'assets/images/user.png', // Default demo image
    this.name = 'بطيخ', // Demo text
    this.price = 20,
    this.quantity = "1000",
    this.unit, // Will default to / الكيلو or translated
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 163.w,
      height: 214.h,
      decoration: BoxDecoration(
        color: AppColors.grayscale50, // Matches #F2F3F3 from Figma
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 16.h,
            left: 8.w,
            right: 8.w,
            bottom: 8.h,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Product Image
                Expanded(
                  child: Center(
                    child: Image.asset(imageUrl, fit: BoxFit.contain),
                  ),
                ),
                SizedBox(height: 8.h),
                // Product Title
                Text(
                  name,
                  style: AppTextStyles.bodyBaseBold.copyWith(
                    color: context.colorScheme.onSurface,
                  ),
                ),
                SizedBox(height: 8.h),
                Text(
                  "${context.local.quantity} $quantity ${context.local.perKilo}",
                  style: AppTextStyles.bodySmallRegular.copyWith(
                    color: context.colorScheme.onSurface,
                  ),
                ),
                SizedBox(height: 8.h),
                // Price & Add Button Row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text:
                                '$price ${context.local.egp} ', // Uses localized currency
                            style: AppTextStyles.bodySmallBold.copyWith(
                              color: AppColors.primary700,
                              fontSize: 14.sp,
                            ),
                          ),
                          TextSpan(
                            text:
                                unit ??
                                context.local.perKilo, // Uses localized unit
                            style: AppTextStyles.bodySmallRegular.copyWith(
                              color: AppColors.orange500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        color: AppColors.primary700,
                        shape: BoxShape.circle,
                      ),
                      padding: EdgeInsets.all(6.w),
                      child: Icon(
                        Icons.edit,
                        color: AppColors.white,
                        size: 20.sp,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          /*
          to user heart icon
          // Heart Icon (Top Right or Start in RTL)
          Positioned(
            top: 8.h,
            right: 8.w,
            child: InkWell(
              onTap: () {},
              borderRadius: BorderRadius.circular(20.r),
              child: Padding(
                padding: EdgeInsets.all(4.w),
                child: const Icon(
                  AppIcons.heart_svg_outline,
                  color: AppColors.grayscale400,
                ),
              ),
            ),
          ),*/
        ],
      ),
    );
  }
}
