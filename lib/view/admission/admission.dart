import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:school_management_system_app/provider/operations.dart';
import 'package:school_management_system_app/utils/colors.dart';
import 'package:school_management_system_app/utils/values_manager.dart';
import 'package:school_management_system_app/view/drawer/drawer_screen.dart';
import 'package:school_management_system_app/widgets/admissiom_header.dart';
import '../../utils/dimension.dart';
import '../../widgets/common_drop_btn.dart';
import '../../widgets/common_text_form.dart';
import '../../widgets/custom_btn.dart';

class AdmissionDesktopForm extends StatelessWidget {
  const AdmissionDesktopForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<OperationProvider>(builder: (context, op, child) {
      return Scaffold(
          appBar:Dimensions.isDestop(context)? AppBar(
            leading: IconButton(
              onPressed: () {
                op.desktopSidebar(
                    isDesktopSidebar: op.isDesktopSidebar ? false : true);
              },
              icon: const Icon(Icons.menu),
            ),
          ):AppBar(),
          drawer: const DrawerScreen() ,
          backgroundColor: AppColors.white,
          body:Dimensions.isDestop(context)? Column(
            children: [
              Expanded(
                child: Row(
                  children: [
                    op.isDesktopSidebar
                        ? SizedBox(
                            width: Dimensions.fullWidth(context) * 0.17,
                            child: const DrawerScreen())
                        : const SizedBox.shrink(),
                    Expanded(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: const EdgeInsets.all(AppMargin.m8),
                                padding: const EdgeInsets.all(AppPadding.p4),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(color: AppColors.grey2)),
                                child:  const Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    AdmissionHeader(
                                        title: "Student Information"),
                                    CommonTextForm(
                                      title: "Student Name",
                                    ),
                                   CommonDropdownButton(list: ['Male','Female'],)
                                  ],
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.all(AppMargin.m8),
                                padding: const EdgeInsets.all(AppPadding.p8),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(color: AppColors.grey2)),
                                child: const Column(
                                  children: [
                                    AdmissionHeader(
                                        title: "Parent Information"),
                                    CommonTextForm(
                                      title: "Father Name",
                                    ),
                                    CommonTextForm(
                                      title: "Father Name",
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.all(AppMargin.m8),
                                padding: const EdgeInsets.all(AppPadding.p8),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(color: AppColors.grey2)),
                                child: const Column(
                                  children: [
                                    AdmissionHeader(
                                        title: "Student Information"),
                                          CommonTextForm(
                                      title: "Father Name",
                                    ),
                                    CommonTextForm(
                                      title: "Father Name",
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          CustomButton(
                            title: '',
                            onTap: () {
                              print("btn press");
                            },
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ): Dimensions.isTablet(context)?  Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: const EdgeInsets.all(AppMargin.m8),
                                padding: const EdgeInsets.all(AppPadding.p4),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(color: AppColors.grey2)),
                                child: const Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    AdmissionHeader(
                                        title: "Student Information"),
                                    CommonTextForm(
                                      title: "Student Name",
                                    ),
                                    CommonTextForm(
                                      title: "Student Name",
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.all(AppMargin.m8),
                                padding: const EdgeInsets.all(AppPadding.p8),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(color: AppColors.grey2)),
                                child: const Column(
                                  children: [
                                    AdmissionHeader(
                                        title: "Parent Information"),
                                    CommonTextForm(
                                      title: "Father Name",
                                    ),
                                    CommonTextForm(
                                      title: "Father Name",
                                    ),
                                  ],
                                ),
                              ),
                             
                            ],
                          ),
                          CustomButton(
                            title: '',
                            onTap: () {
                              print("btn press");
                            },
                          )
                        ],
                      ):Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: const Column(
                        //  mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                          children: [ 
                           AdmissionHeader(
                                          title: "Student Information"),
                                      CommonTextForm(
                                        title: "Student Name",
                                      ),
                                      CommonTextForm(
                                        title: "Student Name",
                                      )
                        ],
                        
                        ),
                      )
          );
    });
  }
}
