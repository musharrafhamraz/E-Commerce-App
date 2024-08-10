import 'package:ecommerce/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:ecommerce/common/widgets/custom_shapes/containers/search_container.dart';

import 'package:ecommerce/common/widgets/text/section_heading.dart';
import 'package:ecommerce/feature/shop/screens/home/widgets/home_appbar.dart';
import 'package:ecommerce/feature/shop/screens/home/widgets/home_categories.dart';
import 'package:ecommerce/utils/constants/colors.dart';

import 'package:ecommerce/utils/constants/sizes.dart';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          TPrimaryHeaderWidget(
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
          )
        ],
      ),
    ));
  }
}
