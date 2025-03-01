import 'package:flutter/material.dart';
import 'package:jhn_store/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:jhn_store/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:jhn_store/common/widgets/texts/section_heading.dart';
import 'package:jhn_store/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:jhn_store/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          /// Header Container
          JPrimaryHeaderContainer(
              child: Column(
            children: [
              ///Appbar
              const JHomeAppBar(),
              const SizedBox(
                height: JSizes.spaceBtnSections,
              ),

              /// Searchbar
              const JSearchContainer(text: 'Search in Store'),
              const SizedBox(
                height: JSizes.spaceBtnSections,
              ),

              /// Categories
              Padding(
                padding: const EdgeInsets.only(left: JSizes.defaultSpace),
                child: Column(
                  children: [

                    ///  Heading
                    JSelectionHeading(title: 'Popular Categories', showActionButton: false,),
                    const SizedBox(
                      height: JSizes.spaceBtnItems,
                    ),

                    /// Categories
                    ListView ()
                  ],
                ),
              )
            ],
          )),
        ],
      )),
    );
  }
}
