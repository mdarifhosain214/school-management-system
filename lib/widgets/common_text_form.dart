import 'package:flutter/material.dart';
import 'package:school_management_system_app/utils/colors.dart';
import 'package:school_management_system_app/utils/dimension.dart';
import 'package:school_management_system_app/utils/style_manager.dart';
import 'package:school_management_system_app/utils/values_manager.dart';

class CommonTextForm extends StatelessWidget {
  final String title;
  const CommonTextForm({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(AppPadding.p8),
            child: Text(
              "$title :",
              style: getLightStyle(color: AppColors.grey, fontSize: AppSize.s16),
            ),
          ),
          SizedBox(
              width: Dimensions.fullWidth(context) * 0.35,
              child: TextFormField()),
        ],
      ),
    );
  }
}
