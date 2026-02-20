import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'offer_card.dart';

class OffersBuilder extends StatelessWidget {
  const OffersBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      options: CarouselOptions(
        height: 158.h,
        viewportFraction: 1,
        scrollPhysics: const CarouselScrollPhysics(),
        enableInfiniteScroll: true,
        enlargeCenterPage: true,
        enlargeFactor: 0.2,
        autoPlay: false,
        onPageChanged: (index, reason) {},
      ),
      itemCount: 3,
      itemBuilder: (context, index, realIndex) {
        return const OfferCard();
      },
    );
  }
}
