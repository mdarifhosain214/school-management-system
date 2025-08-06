import 'package:flutter/material.dart';
import 'package:school_management_system_app/utils/colors.dart';
import 'package:school_management_system_app/utils/dimension.dart';
import 'package:school_management_system_app/utils/values_manager.dart';

class AdmissionHeader extends StatelessWidget {
  final String title;
  const AdmissionHeader({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppPadding.p8),
      child: Container(
        height: 50,
        width: Dimensions.fullWidth(context) * 0.45,
        decoration: BoxDecoration(
            color: AppColors.primary,
            borderRadius: BorderRadius.circular(AppSize.s12)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: AppPadding.p20, right: AppPadding.p8),
              child: Icon(
                Icons.add_circle_outline,
                color: AppColors.white,
                size: AppSize.s18,
              ),
            ),
            Text(
             title,
              style: TextStyle(color: AppColors.white, fontSize: AppSize.s16),
            ),
          ],
        ),
      ),
    );
  }
}
