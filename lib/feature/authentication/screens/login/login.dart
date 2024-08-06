import 'package:ecommerce/common/styles/spacing_styles.dart';
import 'package:ecommerce/common/widgets/login_signup/form_divider.dart';
import 'package:ecommerce/common/widgets/login_signup/social_buttons.dart';
import 'package:ecommerce/feature/authentication/screens/login/widgets/login_form.dart';
import 'package:ecommerce/feature/authentication/screens/login/widgets/login_header.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';

import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyles.paddingwithAppBarHeight,
          child: Column(
            children: [
              LoginHeader(dark: dark),

              // Form

              const LoginForm(),

              // Divider
              TFormDivider(
                dark: dark,
                dividerText: TTexts.orSignInWith.capitalize!,
              ),

              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              const TSocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}
