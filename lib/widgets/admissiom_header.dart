import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:school_management_system_app/utils/colors.dart';
import 'package:school_management_system_app/utils/dimension.dart';
import 'package:school_management_system_app/utils/values_manager.dart';

import '../provider/operations.dart';

class AdmissionHeader extends StatelessWidget {
  final String title;
  const AdmissionHeader({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
   return Consumer<OperationProvider>(builder: (context,op,child){
    return   Padding(
      padding: const EdgeInsets.all(AppPadding.p8),
      child: Container(
        height: 40,
        width:Dimensions.isMobile(context)?Dimensions.fullWidth(context): Dimensions.isTablet(context)?  (Dimensions.fullWidth(context))/2.34: op.isDesktopSidebar? ( Dimensions.fullWidth(context) - MediaQuery.of(context).size.width*0.17)/3.5:Dimensions.fullWidth(context)/3.4 ,
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

   });
  }
}
