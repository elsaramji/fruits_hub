import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class ProductsListView extends StatelessWidget {
  final Widget productCard;
  const ProductsListView({super.key, required this.productCard});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 8,
      clipBehavior: Clip.hardEdge,
      physics: ScrollPhysics(),
      shrinkWrap: false,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8.w,
        mainAxisSpacing: 8.h,
        childAspectRatio: 3 / 4,
      ),
      itemBuilder: (context, index) {
        return productCard;
      },
    );
  }
}
