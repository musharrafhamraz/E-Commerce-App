import 'package:ecommerce/common/widgets/login_signup/form_divider.dart';
import 'package:ecommerce/common/widgets/login_signup/social_buttons.dart';
import 'package:ecommerce/feature/authentication/screens/signup/widgets/signup_form.dart';
import 'package:ecommerce/feature/authentication/screens/signup/widgets/terms_and_conditions.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              Text(
                TTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              // Form
              const TSignUpForm(),

              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              // Terms and Conditions checkbox

              const TTermsandPolicy(),

              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              // SignUp button

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(TTexts.createAccount),
                ),
              ),

              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              // Divivder

              TFormDivider(dividerText: TTexts.orSignUpWith.capitalize!),

              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              // Social Buttons

              const TSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
