import 'package:ecommerce/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:ecommerce/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:ecommerce/common/widgets/layouts/grid_layout.dart';
import 'package:ecommerce/common/widgets/products_cart/product_cart/product_card_vertical.dart';
import 'package:ecommerce/common/widgets/text/section_heading.dart';
import 'package:ecommerce/feature/shop/screens/home/widgets/home_appbar.dart';
import 'package:ecommerce/feature/shop/screens/home/widgets/home_categories.dart';
import 'package:ecommerce/feature/shop/screens/home/widgets/promo_slider.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          const TPrimaryHeaderWidget(
            child: Column(
              children: [
                // AppBar
                SizedBox(
                  height: 10,
                ),

                THomeAppBar(),
                SizedBox(
                  height: TSizes.spaceBtwSections,
                ),

                // SearchBar
                TSearchContainer(
                  text: " Search In Store",
                ),

                SizedBox(
                  height: TSizes.spaceBtwSections,
                ),

                // Categories
                Padding(
                  padding: EdgeInsets.only(left: TSizes.defaultSpace),
                  child: Column(
                    children: [
                      // heading
                      TSectionHeading(
                        title: 'Popular Categories',
                        showActionButton: false,
                        textColor: TColors.white,
                      ),
                      SizedBox(
                        height: TSizes.spaceBtwItems,
                      ),
                      // Categories
                      THomeCategories()
                    ],
                  ),
                ),
              ],
            ),
          ),

          // Body

          Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [
                // Image Promo Slider
                const TPromeSlider(
                  banners: [
                    TImages.banner1,
                    TImages.banner2,
                    TImages.banner3,
                  ],
                ),
                const SizedBox(
                  height: TSizes.spaceBtwSections,
                ),

                TSectionHeading(
                  title: 'Popular Products',
                  showActionButton: true,
                  onPressed: () {},
                ),
                const SizedBox(
                  height: TSizes.spaceBtwSections,
                ),
                // Popular Products

                TGridLayout(
                  itemCOunt: 6,
                  itemBuilder: (_, index) => const TProductsCardVertical(),
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
