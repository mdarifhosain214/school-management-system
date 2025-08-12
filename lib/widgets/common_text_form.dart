import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:school_management_system_app/utils/dimension.dart';

import '../provider/operations.dart';

class CommonTextForm extends StatelessWidget {
  final String title;
  const CommonTextForm({super.key, required this.title});

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
                
                decoration: InputDecoration(hintText: "Enter $title"),
              )));
    });
  }
}