import 'package:flutter/material.dart';
import 'package:jhn_store/utils/constants/images_strings.dart';
import 'package:jhn_store/utils/constants/sizes.dart';
import 'package:jhn_store/utils/constants/text_strings.dart';
import 'package:jhn_store/utils/helpers/helper_functions.dart';

class JLoginHeader extends StatelessWidget {
  const JLoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = JHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          height: 150,
          image: AssetImage(dark ? JImages.lightAppLogo : JImages.darkAppLogo),
        ),
        Text(
          JTexts.loginTitle, style: Theme.of(context).textTheme.headlineMedium,
        ),
        SizedBox(height: JSizes.sm),
        Text(
          JTexts.loginSubTitle, style: Theme.of(context).textTheme.bodyMedium,),
      ],
    );
  }
}