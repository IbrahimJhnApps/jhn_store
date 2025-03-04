import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jhn_store/common/widgets/custom_shapes/curved_edges/circular_container.dart';
import 'package:jhn_store/common/widgets/images/j_rounded_image.dart';
import 'package:jhn_store/features/shop/controllers/home_controller.dart';
import 'package:jhn_store/utils/constants/colors.dart';
import 'package:jhn_store/utils/constants/sizes.dart';

class JPromoSlider extends StatelessWidget {
  const JPromoSlider({
    super.key,
    required this.banners,
  });

  final List<String> banners;

  @override
  Widget build(BuildContext context) {

    final controller = Get.put(HomeController());

    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
              viewportFraction: 1,
              onPageChanged: (index, _) => controller.updatePageIndicator(index)),
              items: banners.map((url) => JRoundedImage(imageUrl: url,)).toList(),),
        const SizedBox(height: JSizes.spaceBtnItems),
        Center(
          child: Obx(
            () => Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (int i = 0; i < banners.length; i++)
                  JCircularContainer(
                    width: 20,
                    height: 4,
                    margin: const EdgeInsets.only(right: 10),
                    backgroundColor: controller.carousalCurrentIndex.value == i ? JColors.primary : JColors.grey,
                  ),
              ],
            ),
          ),
        )
      ],
    );
  }
}