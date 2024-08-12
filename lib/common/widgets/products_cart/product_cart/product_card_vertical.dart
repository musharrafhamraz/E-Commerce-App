import 'package:ecommerce/common/styles/shadow.dart';
import 'package:ecommerce/common/widgets/custom_shapes/containers/t_rounded_container.dart';
import 'package:ecommerce/common/widgets/icons/t_circular_icon.dart';
import 'package:ecommerce/common/widgets/images/t_rounded_images.dart';
import 'package:ecommerce/common/widgets/text/product_price_text.dart';
import 'package:ecommerce/common/widgets/text/product_title_text.dart';
import 'package:ecommerce/common/widgets/text/t_brand_title_with_icon.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TProductsCardVertical extends StatelessWidget {
  const TProductsCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () {},
      child: Container(
          width: 180,
          padding: const EdgeInsets.all(1),
          decoration: BoxDecoration(
            boxShadow: [TShadowStyle.verticalProductShadow],
            borderRadius: BorderRadius.circular(TSizes.productImageRadius),
            color: dark ? TColors.darkGrey : TColors.light,
          ),
          child: Column(
            children: [
              // ThumbNail
              TRoundedContainer(
                height: 180,
                padding: const EdgeInsets.all(TSizes.sm),
                backgroundColor: dark ? TColors.dark : TColors.light,
                child: Stack(
                  children: [
                    // Image
                    const TRoundedImage(
                      imageURL: TImages.productImage1,
                      applyImageRadius: true,
                    ),

                    // sale tag
                    Positioned(
                      top: 12,
                      child: TRoundedContainer(
                        radius: TSizes.sm,
                        backgroundColor: TColors.secondary.withOpacity(0.8),
                        padding: const EdgeInsets.symmetric(
                            horizontal: TSizes.sm, vertical: TSizes.xs),
                        child: Text(
                          '25%',
                          style: Theme.of(context).textTheme.labelLarge!.apply(
                                color: TColors.black,
                              ),
                        ),
                      ),
                    ),

                    // Favourite Icon Button
                    const Positioned(
                      top: 0,
                      right: 0,
                      child: TCircularIcon(
                        icon: Iconsax.heart5,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems / 2,
              ),

              //Details

              Padding(
                padding: const EdgeInsets.only(left: TSizes.sm),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ProductTitleTxt(
                      title: 'Green Nike Air Shoes',
                      smallSize: true,
                    ),
                    SizedBox(
                      height: TSizes.spaceBtwItems / 2,
                    ),
                    TBrandTitlewithVerifiedIcon(
                      title: 'Nike',
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: TSizes.sm),
                    child: TProductPriceText(
                      price: '36.23',
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      color: TColors.dark,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(TSizes.cardRadiusMd),
                          bottomRight:
                              Radius.circular(TSizes.productImageRadius)),
                    ),
                    child: const SizedBox(
                      width: TSizes.iconLg * 1.2,
                      height: TSizes.iconLg * 1.2,
                      child: Center(
                        child: Icon(
                          Iconsax.add,
                          color: TColors.white,
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          )),
    );
  }
}
