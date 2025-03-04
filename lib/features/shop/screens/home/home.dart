import 'package:flutter/material.dart';
import 'package:jhn_store/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:jhn_store/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:jhn_store/common/widgets/texts/section_heading.dart';
import 'package:jhn_store/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:jhn_store/features/shop/screens/home/widgets/home_categories.dart';
import 'package:jhn_store/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:jhn_store/utils/constants/images_strings.dart';
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
          const JPrimaryHeaderContainer(
              child: Column(
            children: [
              ///Appbar
              JHomeAppBar(),
              SizedBox(
                height: JSizes.spaceBtnSections,
              ),

              /// Searchbar
              JSearchContainer(text: 'Search in Store'),
              SizedBox(
                height: JSizes.spaceBtnSections,
              ),

              /// Categories
              Padding(
                padding: EdgeInsets.only(left: JSizes.defaultSpace),
                child: Column(
                  children: [
                    ///  Heading
                    JSelectionHeading(
                      title: 'Popular Categories',
                      showActionButton: false,
                    ),
                    SizedBox(
                      height: JSizes.spaceBtnItems,
                    ),

                    /// Categories
                    JHomeCategories()
                  ],
                ),
              )
            ],
          )),

          /// Body
          Padding(
            padding: EdgeInsets.all(JSizes.defaultSpace),
            child: JPromoSlider(banners: [JImages.promoBanner1, JImages.promoBanner2, JImages.promoBanner3, JImages.promoBanner4],),
          )
        ],
      )),
    );
  }
}
