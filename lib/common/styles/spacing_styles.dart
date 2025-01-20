import 'package:flutter/material.dart';
import 'package:jhn_store/utils/constants/sizes.dart';

class JSpacingStyle {
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: JSizes. appBarHeight,
    left: JSizes. defaultSpace,
    bottom: JSizes. defaultSpace,
    right: JSizes. defaultSpace,
  );
}