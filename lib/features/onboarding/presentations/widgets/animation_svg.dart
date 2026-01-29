import 'package:flutter/material.dart'
    show
        StatelessWidget,
        AnimationController,
        BuildContext,
        Widget,
        FadeTransition;
import 'package:flutter_svg/svg.dart' show SvgPicture;

class AnimationSvg extends StatelessWidget {
  final AnimationController controller;
  final SvgPicture svg;
  const AnimationSvg({super.key, required this.controller, required this.svg});

  @override
  Widget build(BuildContext context) {
    return FadeTransition(opacity: controller, child: svg);
  }
}
