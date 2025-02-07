import 'package:flutter/material.dart';
import 'package:jhn_store/common/widgets/custom_shape/curved_edges/circular_container.dart';
import 'package:jhn_store/utils/constants/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: JColors.primary,
              padding: const EdgeInsets.all(0),
              child: Stack(
                children: [
                  Positioned(
                    top: -150,
                    right: -250,
                    child: JCircularContainer(
                      backgroundColor: JColors.textWhite.withOpacity(0.1),
                    ),
                  ),
                  Positioned(
                    top: 100,
                    right: -300,
                    child: JCircularContainer(
                      backgroundColor: JColors.textWhite.withOpacity(0.1),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
