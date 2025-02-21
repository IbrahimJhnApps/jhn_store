import 'package:flutter/material.dart';
import 'package:jhn_store/common/widgets/appbar/appbar.dart';
import 'package:jhn_store/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:jhn_store/utils/constants/colors.dart';
import 'package:jhn_store/utils/constants/text_strings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [

            JPrimaryHeaderContainer(
                child: Column(
                  children: [
                    JAppBar( title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(JTexts.homeAppbarTitle, style: Theme.of(context).textTheme.labelMedium!.apply(color: JColors.grey)),
                        Text(JTexts.homeAppbarSubTitle, style: Theme.of(context).textTheme.headlineSmall!.apply(color: JColors.white)),
                      ],
                    ),),
                  ],
                )
            ),
          ],
        )
      ),
    );
  }
}
