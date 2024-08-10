import 'package:ecommerce/common/widgets/image_text_widget/vertical_image_txt.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';

class THomeCategories extends StatelessWidget {
  const THomeCategories({
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
          return const TVerticalImageText(
            image: TImages.sportIcon,
            title: 'Shoes Categories',
          );
        },
      ),
    );
  }
}
