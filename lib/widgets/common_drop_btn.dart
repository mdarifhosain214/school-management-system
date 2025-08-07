import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:school_management_system_app/utils/colors.dart';
import 'package:school_management_system_app/utils/values_manager.dart';

import '../provider/operations.dart';
import '../utils/dimension.dart';
import '../utils/style_manager.dart';

class CommonDropdownButton extends StatefulWidget {
  final List<String> list;
  const CommonDropdownButton({super.key, required this.list});

  @override
  State<CommonDropdownButton> createState() => _CommonDropdownButtonState();
}

class _CommonDropdownButtonState extends State<CommonDropdownButton> {
  late String dropdownValue = widget.list.first;

  @override
  Widget build(BuildContext context) {
    return Consumer<OperationProvider>(builder: (context, op, child) {
      return Container(
      height: 40,
       width:Dimensions.isMobile(context)?Dimensions.fullWidth(context): Dimensions.isTablet(context)?  (Dimensions.fullWidth(context))/2.34: op.isDesktopSidebar? ( Dimensions.fullWidth(context) - MediaQuery.of(context).size.width*0.17)/3.5:Dimensions.fullWidth(context)/3.4 ,
       decoration: BoxDecoration( 
        color: AppColors.white,
        borderRadius: BorderRadius.circular(AppSize.s8),
       border: Border.all(color: AppColors.grey1)
       ),
      child: Padding(
        padding: const EdgeInsets.all(AppPadding.p8),
        child: DropdownButton<String>(
          borderRadius: BorderRadius.circular(AppSize.s8),
        isExpanded: true,
        dropdownColor: AppColors.white,
        focusColor: AppColors.primaryOpecity70,
       iconEnabledColor: AppColors.white,
       
          value: dropdownValue,
          icon:  Icon(Icons.arrow_drop_down, color: AppColors.grey,),
          
          style:   getMediunStyle(color: AppColors.darkGrey),
          
          underline: const SizedBox.shrink(),// Container(height: 2, color: Colors.deepPurpleAccent),
          onChanged: (String? value) {
            // This is called when the user selects an item.
            setState(() {
              dropdownValue = value!;
            });
          },
          items:widget. list.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(value: value, child: Text(value));
          }).toList(),
        ),
      ),
    );
    });
  }
}
