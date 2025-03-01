import 'package:flutter/material.dart';
import 'curved_edges.dart';

class JCurvedEdgeWidget extends StatelessWidget {
  const JCurvedEdgeWidget({
    super.key,
    required this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: JCustomCurvedEdges(),
      child: child,
    );
  }
}
