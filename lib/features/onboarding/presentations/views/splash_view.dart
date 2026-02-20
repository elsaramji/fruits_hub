import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show SystemChrome, SystemUiMode;
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart' show SvgPicture;
import 'package:fruits_hub/core/utils/components/test/demo_test_themes.dart';
import '../../../../core/utils/svgs_assets.dart';
import '../widgets/animation_svg.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});
  @override
  State<SplashView> createState() => _SplashViewState();
}
class _SplashViewState extends State<SplashView> with TickerProviderStateMixin {
  late AnimationController _logoController;
  late AnimationController _headerController;
  late AnimationController _bottomController;
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    _logoController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..forward();
    _headerController = AnimationController(vsync: this)
      ..animateTo(
        1.0,
        curve: Curves.easeInCubic,
        duration: const Duration(seconds: 1),
      );
    _bottomController = AnimationController(vsync: this)
      ..animateTo(
        1.0,
        curve: Curves.easeInCubic,
        duration: const Duration(milliseconds: 500),
      );
    Future.delayed(const Duration(seconds: 3), () {
      // immplement navigation to onboarding view or login view
      // just for test
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => DemoTestThemes()),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var colors = Theme.of(context).colorScheme;
    return Container(
      width: 1.sw,
      height: 1.h,
      color: colors.surface,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AnimationSvg(
            controller: _headerController,
            svg: SvgPicture.asset(AppSvgs.splashHeader),
          ),
          Align(
            alignment: AlignmentGeometry.center,
            child: AnimationSvg(
              controller: _logoController,
              svg: SvgPicture.asset(AppSvgs.splashLogo),
            ),
          ),
          AnimationSvg(
            controller: _bottomController,
            svg: SvgPicture.asset(
              AppSvgs.splashBottom,
              width: 1.sw,
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _logoController.dispose();
    _headerController.dispose();
    _bottomController.dispose();
    super.dispose();
  }
}
