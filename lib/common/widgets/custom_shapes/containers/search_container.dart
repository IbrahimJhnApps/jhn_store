import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jhn_store/utils/constants/colors.dart';
import 'package:jhn_store/utils/constants/sizes.dart';
import 'package:jhn_store/utils/device/device_utility.dart';
import 'package:jhn_store/utils/helpers/helper_functions.dart';

class JSearchContainer extends StatelessWidget {
  const JSearchContainer({
    super.key,
    required this.text,
    this.icon = Iconsax.search_normal,
    this.showBackground = true,
    this.showBorder = true,
    this.onTap,
  });

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = JHelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: onTap,
      child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: JSizes.defaultSpace),
          child: Container(
            width: JDeviceUtils.getScreenWidth(context),
            padding: const EdgeInsets.all(JSizes.md),
            decoration: BoxDecoration(
                color: showBackground? dark ? JColors.dark : JColors.light : Colors.transparent,
                borderRadius:
                BorderRadius.circular(JSizes.cardRadiosLg),
                border: showBorder ? Border.all(color: JColors.grey) : null),
            child: Row(
              children: [
                Icon(
                  icon,
                  color: JColors.darkGrey,
                ),
                const SizedBox(
                  width: JSizes.spaceBtnItems,
                ),
                Text(text, style: Theme.of(context).textTheme.bodySmall,)
              ],
            ),

            /// Categories
          )),
    );
  }
}