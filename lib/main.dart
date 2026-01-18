import 'package:flutter/material.dart';

import 'core/icons/app_icons.dart';
import 'core/themes/themes_data.dart';

void main() {
  runApp(MainPoint());
}

class MainPoint extends StatelessWidget {
  const MainPoint({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppThemes.themeDataLight(),
      debugShowCheckedModeBanner: false,
      home: DemoTestThemes(),
    );
  }
}

class DemoTestThemes extends StatelessWidget {
  const DemoTestThemes({super.key});

  @override
  Widget build(BuildContext context) {
    var colors = Theme.of(context).colorScheme;
    var textStyles = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: Text("Test Themes In App", style: textStyles.headlineLarge),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text("مرحبًا بك في FruitHUB", style: textStyles.displayLarge!),

          Text(
            "lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
            style: textStyles.bodyMedium,
          ),
          TextField(decoration: InputDecoration(hintText: "hello_text_field")),
          ElevatedButton(onPressed: () {}, child: Text("hello")),
          OutlinedButton(onPressed: () {}, child: Text("hello")),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                AppIcons.shopping_bag_svg_bold,
                size: 50,
                color: colors.primary,
              ),
              Icon(
                AppIcons.shopping_bag_svg_outline,
                size: 50,
                color: colors.primary,
              ),
              Icon(
                AppIcons.calendar_1_svg_bold,
                size: 50,
                color: colors.primary,
              ),
              Icon(
                AppIcons.calendar_1_svg_outline,
                size: 50,
                color: colors.primary,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
