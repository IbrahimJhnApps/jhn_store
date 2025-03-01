import 'package:flutter/material.dart';
import 'package:jhn_store/utils/constants/colors.dart';
import 'package:jhn_store/utils/constants/images_strings.dart';
import 'package:jhn_store/utils/constants/sizes.dart';

class JSocialButtons extends StatelessWidget {
  const JSocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: JColors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: () {},
            icon: Image(
              width: JSizes.iconMd,
              height: JSizes.iconMd,
              image:AssetImage(JImages.google),
            ),
          ),
        ),
        const SizedBox(width: JSizes.spaceBtnItems),

        Container(
          decoration: BoxDecoration(
              border: Border.all(color: JColors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: () {},
            icon: Image(
              width: JSizes.iconMd,
              height: JSizes.iconMd,
              image:AssetImage(JImages.apple),
            ),
          ),
        ),

        const SizedBox(width: JSizes.spaceBtnItems),

        Container(
          decoration: BoxDecoration(
              border: Border.all(color: JColors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: () {},
            icon: Image(
              width: JSizes.iconMd,
              height: JSizes.iconMd,
              image:AssetImage(JImages.meta),
            ),
          ),
        ),
      ],
    );
  }
}