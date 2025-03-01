import 'package:flutter/material.dart';
import 'package:jhn_store/common/styles/spacing_styles.dart';
import 'package:jhn_store/utils/constants/sizes.dart';
import 'package:jhn_store/utils/constants/text_strings.dart';
import 'package:jhn_store/utils/helpers/helper_functions.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen(
      {super.key,
      required this.image,
      required this.title,
      required this.subtitle,
      required this.onPressed});

  final String image, title, subtitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: JSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              ///Image
              Image(
                image: AssetImage(image),
                width: JHelperFunctions.screenWidth()* 0.6,
              ),
              const SizedBox(
                height: JSizes.spaceBtnSections,
              ),

              ///Title & Sub Title
              Text(
                title,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: JSizes.spaceBtnItems,
              ),
              Text(
                subtitle,
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: JSizes.spaceBtnSections,
              ),

              ///Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: onPressed, child: Text(JTexts.jContinue)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
