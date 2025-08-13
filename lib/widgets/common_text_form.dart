import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:school_management_system_app/utils/colors.dart';
import 'package:school_management_system_app/utils/dimension.dart';

import '../provider/operations.dart';
import '../utils/style_manager.dart';

class CommonTextForm extends StatelessWidget {
  final String title;
  final TextEditingController textController;
  final FocusNode focusNode;

  final bool readOnly;
  final int maxLine;
  final VoidCallback? onPressed;
  final IconData? suffixIconData;
  final IconData? prefixIconData;
  const CommonTextForm({super.key, required this.title, required this.textController, required this.focusNode,  this.readOnly=false, this.onPressed, this.suffixIconData, this.prefixIconData,  this.maxLine=1});

  @override
  Widget build(BuildContext context) {
    return Consumer<OperationProvider>(builder: (context, op, child) {
      return Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
              height: 40,
              width:Dimensions.isMobile(context)?Dimensions.fullWidth(context): Dimensions.isTablet(context)?  (Dimensions.fullWidth(context))/2.34: op.isDesktopSidebar? (Dimensions.fullWidth(context) -
                      MediaQuery.of(context).size.width * 0.17) /
                 2.3:Dimensions.fullWidth(context)/2.2 ,
              child: TextFormField(
                controller: textController,
                maxLines: maxLine,
                decoration: InputDecoration(
                  hintText: "Enter $title",
                  hintStyle: getRegularStyle(color: AppColors.grey2),
                suffixIcon: IconButton(
                onPressed: onPressed,
                icon: Icon(
                  suffixIconData,
                  color: AppColors.primary,
                  size: 24,
                )),
                ),
                
              )));
    });
  }
}