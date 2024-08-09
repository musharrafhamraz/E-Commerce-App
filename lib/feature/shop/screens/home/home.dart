import 'package:ecommerce/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: TColors.primary,
        ),
        child: const Center(
          child: Text("Hello. Home Screen."),
        ),
      ),
    );
  }
}
