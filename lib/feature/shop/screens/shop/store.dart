import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:ecommerce/common/widgets/custom_shapes/containers/t_rounded_container.dart';
import 'package:ecommerce/common/widgets/images/t_circular_image.dart';
import 'package:ecommerce/common/widgets/layouts/grid_layout.dart';
import 'package:ecommerce/common/widgets/products_cart/cart/cart_menu_cart.dart';
import 'package:ecommerce/common/widgets/text/section_heading.dart';
import 'package:ecommerce/common/widgets/text/t_brand_title_with_icon.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/enums.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text(
          'Store',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [TCartCounterIcon(onPressed: () {})],
      ),
      body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor: THelperFunctions.isDarkMode(context)
                    ? TColors.black
                    : TColors.white,
                expandedHeight: 440,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(TSizes.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      const SizedBox(
                        height: TSizes.spaceBtwItems,
                      ),
                      const TSearchContainer(
                        text: 'Search in Store',
                        showBorder: true,
                        showBackground: false,
                        padding: EdgeInsets.zero,
                      ),

                      const SizedBox(
                        height: TSizes.spaceBtwItems,
                      ),

                      // Feature brands

                      TSectionHeading(
                        title: 'Featured Brands',
                        showActionButton: true,
                        textColor: TColors.black,
                        onPressed: () {},
                      ),
                      const SizedBox(
                        height: TSizes.spaceBtwItems / 1.5,
                      ),

                      TGridLayout(
                          itemCOunt: 4,
                          mainAxisExtent: 80,
                          itemBuilder: (_, index) {
                            return GestureDetector(
                              onTap: () {},
                              child: TRoundedContainer(
                                padding: EdgeInsets.all(TSizes.sm),
                                showBorder: true,
                                backgroundColor: Colors.transparent,
                                child: Row(
                                  children: [
                                    // ICON

                                    Flexible(
                                      child: TCircularImage(
                                        isNetworkImage: false,
                                        image: TImages.clothIcon,
                                        backgroundColor: Colors.transparent,
                                        overlayColor:
                                            THelperFunctions.isDarkMode(context)
                                                ? TColors.white
                                                : TColors.black,
                                      ),
                                    ),

                                    const SizedBox(
                                      width: TSizes.spaceBtwItems / 2,
                                    ),

                                    // Text

                                    Expanded(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          TBrandTitlewithVerifiedIcon(
                                            title: 'Nike',
                                            brandTextSize: TextSizes.large,
                                          ),
                                          Text(
                                            '256 Products',
                                            overflow: TextOverflow.ellipsis,
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelMedium,
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          })
                    ],
                  ),
                ),
              )
            ];
          },
          body: Container()),
    );
  }
}
