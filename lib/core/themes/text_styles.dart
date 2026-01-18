library;

import 'dart:ui' show FontWeight;
import 'package:flutter/widgets.dart' show TextStyle;

abstract final class AppTextStyles {
  static const String fontFamily = 'Cairo';

  // Heading 1 - 48px
  static const TextStyle heading1Bold = TextStyle(
    fontFamily: fontFamily,
    fontSize: 48,
    fontWeight: FontWeight.bold,
    height: 1.4,
  );
  static const TextStyle heading1Regular = TextStyle(
    fontFamily: fontFamily,
    fontSize: 48,
    fontWeight: FontWeight.w400,
    height: 1.4,
  );

  // Heading 2 - 40px
  static const TextStyle heading2Bold = TextStyle(
    fontFamily: fontFamily,
    fontSize: 40,
    fontWeight: FontWeight.bold,
    height: 1.4,
  );
  static const TextStyle heading2Regular = TextStyle(
    fontFamily: fontFamily,
    fontSize: 40,
    fontWeight: FontWeight.w400,
    height: 1.4,
  );

  // Heading 3 - 33px
  static const TextStyle heading3Bold = TextStyle(
    fontFamily: fontFamily,
    fontSize: 33,
    fontWeight: FontWeight.bold,
    height: 1.4,
  );
  static const TextStyle heading3Regular = TextStyle(
    fontFamily: fontFamily,
    fontSize: 33,
    fontWeight: FontWeight.w400,
    height: 1.4,
  );

  // Heading 4 - 28px
  static const TextStyle heading4Bold = TextStyle(
    fontFamily: fontFamily,
    fontSize: 28,
    fontWeight: FontWeight.bold,
    height: 1.4,
  );
  static const TextStyle heading4Regular = TextStyle(
    fontFamily: fontFamily,
    fontSize: 28,
    fontWeight: FontWeight.w400,
    height: 1.4,
  );

  // Heading 5 - 23px
  static const TextStyle heading5Bold = TextStyle(
    fontFamily: fontFamily,
    fontSize: 23,
    fontWeight: FontWeight.bold,
    height: 1.4,
  );
  static const TextStyle heading5Regular = TextStyle(
    fontFamily: fontFamily,
    fontSize: 23,
    fontWeight: FontWeight.w400,
    height: 1.4,
  );

  // Body Large - 19px
  static const TextStyle bodyLargeBold = TextStyle(
    fontFamily: fontFamily,
    fontSize: 19,
    fontWeight: FontWeight.bold,
    height: 1.4,
  );
  static const TextStyle bodyLargeRegular = TextStyle(
    fontFamily: fontFamily,
    fontSize: 19,
    fontWeight: FontWeight.w400,
    height: 1.4,
  );

  // Body Base - 16px
  static const TextStyle bodyBaseBold = TextStyle(
    fontFamily: fontFamily,
    fontSize: 16,
    fontWeight: FontWeight.bold,
    height: 1.4,
  );
  static const TextStyle bodyBaseRegular = TextStyle(
    fontFamily: fontFamily,
    fontSize: 16,
    fontWeight: FontWeight.w400,
    height: 1.4,
  );

  // Body Small - 13px
  static const TextStyle bodySmallBold = TextStyle(
    fontFamily: fontFamily,
    fontSize: 13,
    fontWeight: FontWeight.bold,
    height: 1.4,
  );
  static const TextStyle bodySmallRegular = TextStyle(
    fontFamily: fontFamily,
    fontSize: 13,
    fontWeight: FontWeight.w400,
    height: 1.4,
  );

  // Body X-Small - 11px
  static const TextStyle bodyXSmallBold = TextStyle(
    fontFamily: fontFamily,
    fontSize: 11,
    fontWeight: FontWeight.bold,
    height: 1.4,
  );
  static const TextStyle bodyXSmallRegular = TextStyle(
    fontFamily: fontFamily,
    fontSize: 11,
    fontWeight: FontWeight.w400,
    height: 1.4,
  );
}
