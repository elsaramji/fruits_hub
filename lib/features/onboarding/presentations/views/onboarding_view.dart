import 'package:carousel_slider/carousel_slider.dart'
    show CarouselSlider, CarouselOptions;
import 'package:flutter/material.dart'
    show
        Colors,
        FloatingActionButtonLocation,
        Scaffold,
        StatefulWidget,
        State,
        BuildContext,
        Widget,
        Brightness,
        Clip,
        Positioned,
        Text,
        Stack;
import 'package:flutter/services.dart' show SystemUiOverlayStyle, SystemChrome;
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_hub/core/extinctions/app_extinctions.dart';
import 'package:fruits_hub/core/utils/svgs_assets.dart';
import '../widgets/on_boarding_get_start.dart';
import '../widgets/on_boarding_indicator.dart';
import '../widgets/on_boarding_vector.dart';
import '../widgets/onboarding_app_bar.dart';
import '../widgets/onboarding_body.dart';
import '../widgets/onboarding_title.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  int currentPage = 0;
  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: currentPage == 0 ? const OnboardingAppBar() : null,
        body: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              top: 0,
              child: OnBoardingVector(currentPage: currentPage),
            ),
            Positioned.fill(
              child: CarouselSlider.builder(
                options: CarouselOptions(
                  height: 1.sh,
                  viewportFraction: 1,
                  onPageChanged: (index, reason) {
                    setState(() {
                      currentPage = index;
                    });
                  },
                ),
                itemBuilder: (context, index, realIndex) {
                  return OnboardingBody(
                    svg: index == 0
                        ? AppSvgs.fruitBasketOnboaring
                        : AppSvgs.pineapplesOnboarding,
                    title: index == 0
                        ? const OnboardingTitle()
                        : Text(
                            context.local.onBoardingTitle2,
                            style: context.textTheme.bodyLarge,
                          ),
                    description: context.local.onBoardingDescription1,
                  );
                },
                itemCount: 2,
              ),
            ),
            Positioned(
              bottom: 100.h,
              width: 1.sw,
              child: OnBoardingIndcator(currentPage: currentPage),
            ),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: OnBoardingGetStart(currentPage: currentPage),
      
    );
  }
}
