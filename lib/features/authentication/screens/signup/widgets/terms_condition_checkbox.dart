import 'package:flutter/material.dart';
import 'package:jhn_store/utils/constants/colors.dart';
import 'package:jhn_store/utils/constants/sizes.dart';
import 'package:jhn_store/utils/constants/text_strings.dart';
import 'package:jhn_store/utils/helpers/helper_functions.dart';

class JTermsAndConditionCheckbox extends StatelessWidget {
  const JTermsAndConditionCheckbox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = JHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        SizedBox(width: 24, height: 24, child: Checkbox(value: true, onChanged: (value) {} ),),
        const SizedBox(height: JSizes.spaceBtnItem,),
        Text.rich(TextSpan(children: [
          TextSpan(text: '${JTexts.iAgreeTO} ', style: Theme.of(context).textTheme.bodySmall),
          TextSpan(text: JTexts.privacyPolicy, style: Theme.of(context).textTheme.bodyMedium!.apply(
            color: dark ? JColors.white : JColors.primary,
            decoration: TextDecoration.underline,
            decorationColor: dark ? JColors.white : JColors.primary,
          ),),
          TextSpan(text: ' ${JTexts.and} ', style: Theme.of(context).textTheme.bodySmall),
          TextSpan(text: JTexts.termsOfUse, style: Theme.of(context).textTheme.bodyMedium!.apply(
            color: dark ? JColors.white : JColors.primary,
            decoration: TextDecoration.underline,
            decorationColor: dark ? JColors.white : JColors.primary,
          ),),
        ]),),
      ],
    );
  }
}