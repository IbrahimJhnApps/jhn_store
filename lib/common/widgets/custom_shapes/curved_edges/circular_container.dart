import 'package:flutter/material.dart';
import 'package:jhn_store/utils/constants/colors.dart';

class JCircularContainer extends StatelessWidget {
  const  JCircularContainer({
    super.key,
    this.child,
    this.width = 400,
    this.height = 400,
    this.radius = 400,
    this.margin,
    this.padding = 0,
    this.backgroundColor = JColors.white,
  });

  final double? width;
  final double? height;
  final double radius;
  final EdgeInsets? margin;
  final double padding;
  final Widget? child;
  final Color backgroundColor;


  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: JColors.textWhite.withValues(alpha: 0.1),
      ),
      child: child,
    );
  }
}
