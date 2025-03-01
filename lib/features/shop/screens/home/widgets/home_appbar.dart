import 'package:flutter/material.dart';
import 'package:jhn_store/common/widgets/appbar/appbar.dart';
import 'package:jhn_store/common/widgets/products/cart_menu_icon.dart';
import 'package:jhn_store/utils/constants/colors.dart';
import 'package:jhn_store/utils/constants/text_strings.dart';

class JHomeAppBar extends StatelessWidget {
  const JHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return JAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(JTexts.homeAppbarTitle, style: Theme.of(context).textTheme.labelMedium!.apply(color: JColors.grey)),
          Text(JTexts.homeAppbarSubTitle,
              style: Theme.of(context).textTheme.headlineSmall!.apply(color: JColors.white)),
        ],
      ),
      actions: [
        JCartCounterIcon(onPressed: () {  }, iconColor: JColors.white,)
      ],
    );
  }
}