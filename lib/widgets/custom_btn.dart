import 'package:flutter/material.dart';

import '../utils/colors.dart';
import '../utils/style_manager.dart';
import '../utils/values_manager.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  const CustomButton({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.all(AppMargin.m8),
        padding: const EdgeInsets.all(AppPadding.p8),
        height: 40,
        width: 150,
        decoration: BoxDecoration(
            color: AppColors.primary,
            borderRadius: BorderRadius.circular(AppSize.s8),
            boxShadow: [
              BoxShadow(
                  color: AppColors.grey2, spreadRadius: 2.0, blurRadius: 5,offset: const Offset(0.5, 0.5)
                  ),
            ]),
        child: Center(
            child: Text(
          "Save",
          style: getMediunStyle(color: AppColors.white, fontSize: AppSize.s16),
        )),
      ),
    );
  }
}
