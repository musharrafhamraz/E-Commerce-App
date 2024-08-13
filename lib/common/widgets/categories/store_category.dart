import 'package:ecommerce/common/widgets/brands/t_brand_showcase.dart';
import 'package:ecommerce/common/widgets/layouts/grid_layout.dart';
import 'package:ecommerce/common/widgets/products_cart/product_cart/product_card_vertical.dart';
import 'package:ecommerce/common/widgets/text/section_heading.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TCategoryTab extends StatelessWidget {
  const TCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              const TBrandShowCase(images: [
                TImages.productImage3,
                TImages.productImage2,
                TImages.productImage1,
              ]),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              TSectionHeading(
                title: 'You might Like',
                showActionButton: true,
                onPressed: () {},
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              TGridLayout(
                  itemCOunt: 4,
                  itemBuilder: (_, index) => const TProductsCardVertical()),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
            ],
          ),
        )
      ],
    );
  }
}
