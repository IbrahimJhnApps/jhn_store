import 'package:flutter/material.dart';
import 'package:jhn_store/features/authentication/controllers/onboarding_controller.dart';
import 'package:jhn_store/utils/constants/sizes.dart';
import 'package:jhn_store/utils/device/device_utility.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: JDeviceUtils.getAppBarHeight(),
      right: JSizes.defaultSpace,
      child: TextButton(
        onPressed: () => OnBoardingController.instance.skipPage(),
        child: const Text('Skip'),
      ),
    );
  }
}
