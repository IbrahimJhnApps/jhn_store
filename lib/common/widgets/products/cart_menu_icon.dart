import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jhn_store/utils/constants/colors.dart';

class JCartCounterIcon extends StatelessWidget {
  const JCartCounterIcon({
    super.key,
    required this .onPressed,
    required this.iconColor,
  });

  final Color iconColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(onPressed: () {}, icon: Icon(Iconsax.shopping_bag, color: JColors.white)),
        Positioned(
          right: 0,
          child: Container(
              width: 18,
              height: 18,
              decoration: BoxDecoration(
                color: JColors.black,
                borderRadius: BorderRadius.circular(100),
                ///shape: BoxShape.circle, // You can also use BoxShape.circle for a circular shape
              ),
              child: Center(
                child: Text(
                  '2',
                  style: Theme.of(context).textTheme.labelLarge!.apply(color: JColors.white, fontSizeFactor: 0.8),),)
          ),
        )
      ],
    );
  }
}