import 'package:flutter/material.dart';
import 'package:jhn_store/utils/constants/colors.dart';
import 'package:jhn_store/utils/constants/sizes.dart';
import 'package:jhn_store/utils/device/device_utility.dart';
import 'package:jhn_store/utils/helpers/helper_functions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = JHelperFunctions.isDarkMode(context);
    return Positioned(
      bottom: JDeviceUtils.getBottomNavigationBarHeight() + 25,
      left: JSizes.defaultSpace,
      child:SmoothPageIndicator(
        controller: PageController(),
        count: 3,
        effect: ExpandingDotsEffect(activeDotColor: dark ? JColors.light: JColors.dark, dotHeight: 6),
      ),
    );
  }
}