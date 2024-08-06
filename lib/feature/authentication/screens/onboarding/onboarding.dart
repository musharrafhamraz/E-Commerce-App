import 'package:ecommerce/feature/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:ecommerce/feature/authentication/screens/onboarding/widgets/onbaording_page.dart';
import 'package:ecommerce/feature/authentication/screens/onboarding/widgets/onboardingdots.dart';
import 'package:ecommerce/feature/authentication/screens/onboarding/widgets/onboardingnextbtn.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/text_strings.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());

    return Scaffold(
        body: Stack(
      children: [
        PageView(
          controller: controller.pageController,
          onPageChanged: controller.updatePageIndicator,
          children: const [
            OnboardingPage(
              image: TImages.onBoardingImage1,
              title: TTexts.onBoardingTitle1,
              subTitle: TTexts.onBoardingSubTitle1,
            ),
            OnboardingPage(
              image: TImages.onBoardingImage2,
              title: TTexts.onBoardingTitle2,
              subTitle: TTexts.onBoardingSubTitle2,
            ),
            OnboardingPage(
              image: TImages.onBoardingImage3,
              title: TTexts.onBoardingTitle3,
              subTitle: TTexts.onBoardingSubTitle3,
            ),
          ],
        ),
        // Skip button

        Positioned(
            top: TDeviceUtils.getAppBarHeight(),
            right: TSizes.defaultSpace,
            child: TextButton(
              onPressed: () => OnboardingController.instance.skipPage(),
              child: const Text("Skip"),
            )),

        // Dot Navigation

        const OnBoardingDots(),

        // Circular Button

        const OnBoardingNextButton()
      ],
    ));
  }
}
