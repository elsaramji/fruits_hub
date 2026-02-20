import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_hub/core/utils/components/search_text_input.dart';

import 'offers_builder.dart';
import '../../../../core/utils/components/products_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        children: [
          const SearchTextInput(),
          Expanded(
            child: ListView(
              primary: true,
              physics: const AlwaysScrollableScrollPhysics(),
              shrinkWrap: false,
              addAutomaticKeepAlives: false,
              children: [
                SizedBox(height: 16.h),
                const OffersBuilder(),
                SizedBox(height: 16.h),
                const ProductsListView(),
                SizedBox(height: 16.h),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
