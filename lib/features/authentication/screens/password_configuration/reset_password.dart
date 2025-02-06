import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jhn_store/features/authentication/screens/login/login_screen.dart';
import 'package:jhn_store/utils/constants/images_strings.dart';

import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';
import '../../../../utils/helpers/helper_functions.dart';

class ResetScreen extends StatelessWidget {
  const ResetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.back(),
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(JSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///Image
            Image(
              image: AssetImage(JImages.OnBoardingImage4),
              width: JHelperFunctions.screenWidth()* 0.6,
            ),
            const SizedBox(
              height: JSizes.spaceBtnSection,
            ),

            ///Title & Sub Title
            Text(
              JTexts.changeYourPasswordTitle,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: JSizes.spaceBtnItem,
            ),
            Text(
              JTexts.changeYourPasswordSubTitle,
              style: Theme.of(context).textTheme.labelLarge,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: JSizes.spaceBtnSection,
            ),

            ///Buttons
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () => Get.to(() => const LoginScreen()), child: Text(JTexts.jDone)),
            ),
            const SizedBox(
              height: JSizes.spaceBtnItem,
            ),
            SizedBox(
              width: double.infinity,
              child: TextButton(
                  onPressed: () {}, child: Text(JTexts.resendEmail)),
            ),
          ],
        ),
      ),
    );
  }
}
