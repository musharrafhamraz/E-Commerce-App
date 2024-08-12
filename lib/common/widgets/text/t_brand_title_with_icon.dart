import 'package:ecommerce/common/widgets/text/t_brand_title.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/enums.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TBrandTitlewithVerifiedIcon extends StatelessWidget {
  const TBrandTitlewithVerifiedIcon({
    super.key,
    required this.title,
    this.maxlines = 1,
    this.textColor,
    this.iconColor = TColors.primary,
    this.textAlign = TextAlign.center,
    this.brandTextSize = TextSizes.small,
  });

  final String title;
  final int maxlines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        TBrandTitleText(
          title: title,
          color: textColor,
          maxLines: maxlines,
          textAlign: textAlign,
          brandTextSize: brandTextSize,
        ),
        const SizedBox(
          width: TSizes.xs,
        ),
        const Icon(Iconsax.verify5, color: TColors.primary, size: TSizes.iconXs)
      ],
    );
  }
}
