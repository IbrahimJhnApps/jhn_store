import 'package:flutter/material.dart';
import 'package:jhn_store/features/authentication/screens/widgets/onboarding_dot_navigation.dart';
import 'package:jhn_store/features/authentication/screens/widgets/onboarding_page.dart';
import 'package:jhn_store/features/authentication/screens/widgets/onboarding_skip.dart';
import 'package:jhn_store/utils/constants/images_strings.dart';
import 'package:jhn_store/utils/constants/text_strings.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ///Horizontal Scrollable Page
          PageView(
            children: const[
              OnBoardingPage(
                image: JImages.OnBoardingImage1,
                title: JTexts.onBoardingTitle1,
                subTitle: JTexts.onBoardingSubTitle1,),
              OnBoardingPage(
                image: JImages.OnBoardingImage1,
                title: JTexts.onBoardingTitle2,
                subTitle: JTexts.onBoardingSubTitle2,),
              OnBoardingPage(
                image: JImages.OnBoardingImage1,
                title: JTexts.onBoardingTitle3,
                subTitle: JTexts.onBoardingSubTitle3,)
            ],
          ),
          ///Skip Button
          const OnBoardingSkip(),
          
          ///Dot Navigation SmoothPageIndicator
          const OnBoardingDotNavigation(),

          ///Circular Button
        ],
      ),
    );
  }
}

