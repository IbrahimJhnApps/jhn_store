import 'package:flutter/material.dart';
import 'package:jhn_store/common/widgets/Image_text_widgets/vertical_image_text.dart';
import 'package:jhn_store/utils/constants/images_strings.dart';

class JHomeCategories extends StatelessWidget {
  const JHomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return JVerticalImageText(image: JImages.category1, title: 'Home', onTap: () {},);
        },
      ),
    );
  }
}