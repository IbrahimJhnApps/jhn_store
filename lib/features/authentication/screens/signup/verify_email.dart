import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jhn_store/common/widgets/success_screen/success_screen.dart';
import 'package:jhn_store/features/authentication/screens/login/login_screen.dart';
import 'package:jhn_store/utils/constants/images_strings.dart';
import 'package:jhn_store/utils/constants/sizes.dart';
import 'package:jhn_store/utils/constants/text_strings.dart';
import 'package:jhn_store/utils/helpers/helper_functions.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.offAll(() => const LoginScreen()),
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(JSizes.defaultSpace),
          child: Column(
            children: [
              ///Image
              Image(
                image: AssetImage(JImages.OnBoardingImage4),
                width: JHelperFunctions.screenWidth(), //* 0.6,
              ),
              const SizedBox(
                height: JSizes.spaceBtnSection,
              ),

              ///Title & Sub Title
              Text(
                JTexts.confirmEmail,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: JSizes.spaceBtnItem,
              ),
              Text(
                'support@appbyjhn.com',
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: JSizes.spaceBtnItem,
              ),
              Text(
                JTexts.confirmEmailSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: JSizes.spaceBtnSection,
              ),

              ///Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.to(() => SuccessScreen(
                          image: JImages.OnBoardingImage4,
                          title: JTexts.yourAccountCreatedTitle,
                          subtitle: JTexts.yourAccountCreatedTitleSubTitle,
                          onPressed: () => Get.to(() => const LoginScreen()),
                        )),
                    child: Text(JTexts.jContinue)),
              ),
              const SizedBox(height: JSizes.spaceBtnSection),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                    onPressed: () {}, child: Text(JTexts.resendEmail)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
