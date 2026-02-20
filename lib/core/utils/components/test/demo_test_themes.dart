import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show SystemChrome, SystemUiMode;
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../icons/app_icons.dart';

class DemoTestThemes extends StatefulWidget {
  const DemoTestThemes({super.key});

  @override
  State<DemoTestThemes> createState() => _DemoTestThemesState();
}

class _DemoTestThemesState extends State<DemoTestThemes> {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var textStyles = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: Text("Test Themes In App", style: textStyles.headlineLarge),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("مرحبًا بك في FruitHUB", style: textStyles.displayLarge!),

            Text(
              "lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
              style: textStyles.bodyMedium,
            ),
            TextField(
              decoration: InputDecoration(hintText: "hello_text_field"),
            ),
            ElevatedButton(onPressed: () {}, child: Text("hello")),
            OutlinedButton(onPressed: () {}, child: Text("hello")),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(AppIcons.shopping_bag_svg_bold, size: 50.sp),
                Icon(AppIcons.shopping_bag_svg_outline, size: 50.sp),
                Icon(AppIcons.calendar_1_svg_bold, size: 50.sp),
                Icon(AppIcons.calendar_1_svg_outline, size: 50.sp),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
