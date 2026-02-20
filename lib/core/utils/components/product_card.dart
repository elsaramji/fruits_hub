import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blueGrey,
        borderRadius: BorderRadius.circular(4.r),
      ),
      child: Column(
        children: [
          Text(
            "apsum dolor sit amet consectetur adipiscing elit",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 20.sp),
          ),
          Text(
            "apsum dolor sit amet consectetur adipiscing elit",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 20.sp),
          ),
        ],
      ),
    );
  }
}
