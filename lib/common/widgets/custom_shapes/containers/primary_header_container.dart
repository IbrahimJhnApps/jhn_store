import 'package:flutter/material.dart';
import 'package:jhn_store/common/widgets/custom_shapes/curved_edges/circular_container.dart';
import 'package:jhn_store/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:jhn_store/utils/constants/colors.dart';

class JPrimaryHeaderContainer extends StatelessWidget {
  const JPrimaryHeaderContainer({
    super.key, required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return JCurvedEdgeWidget(
      child: Container(
        color: JColors.primary,
        padding: EdgeInsets.only(bottom: 0),
        height: 400,
        width: double.infinity,


        child: Stack(
          children: [
            ///Background Custom Shapes
            Positioned(top: -150, right: -250,
              child: JCircularContainer(backgroundColor: JColors.textWhite.withValues(alpha: 0.1),
              ),
            ),
            Positioned(top: 100, right: -300,
              child: JCircularContainer(backgroundColor: JColors.textWhite.withValues(alpha: 0.1),
              ),
            ),
            Column(
              children: [],
            ),
          ],
        ),
      ),
    );
  }
}