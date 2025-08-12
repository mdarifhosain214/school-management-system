import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:school_management_system_app/provider/operations.dart';
import 'package:school_management_system_app/utils/colors.dart';
import 'package:school_management_system_app/utils/values_manager.dart';
import 'package:school_management_system_app/view/drawer/drawer_screen.dart';
import 'package:school_management_system_app/widgets/admissiom_header.dart';
import '../../provider/api_provider.dart';
import '../../utils/dimension.dart';
import '../../utils/router_manager.dart';
import '../../widgets/common_drop_btn.dart';
import '../../widgets/common_text_form.dart';
import '../../widgets/custom_btn.dart';

class AdmissionDesktopForm extends StatelessWidget {
  const AdmissionDesktopForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer2<ApiProvider,OperationProvider>(builder: (context,ap, op, child) {
      return Scaffold(
          appBar: Dimensions.isDestop(context)
              ? AppBar(
                  leading: IconButton(
                    onPressed: () {
                      op.desktopSidebar(
                          isDesktopSidebar: op.isDesktopSidebar ? false : true);
                    },
                    icon: const Icon(Icons.menu),
                  ),
                  title: Row(
                    children: [
                      InkWell(
                        child: const Text("Home"),
                        onTap: () {
                          Navigator.pushNamedAndRemoveUntil(
                              context, Routes.home, (route) => false);
                        },
                      ),
                      const Text(
                          "                                           Admission Here"),
                    ],
                  ),
                )
              : AppBar(),
          drawer: const DrawerScreen(),
          backgroundColor: AppColors.white,
          body: Dimensions.isDestop(context)
              ? Column(
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
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin:
                                            const EdgeInsets.all(AppMargin.m8),
                                        padding:
                                            const EdgeInsets.all(AppPadding.p4),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            border: Border.all(
                                                color: AppColors.grey2)),
                                        child: const Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            AdmissionHeader(
                                                title: "Student Information"),
                                            CommonTextForm(
                                              title: "Student Name",
                                            ),
                                            CommonDropdownButton(
                                              list: ['Male', 'Female','third gender'],
                                            ),CommonTextForm(
                                              title: "Date of Birth",
                                            ),CommonTextForm(
                                              title: "Religion",
                                            ),
                                            CommonTextForm(
                                              title: "Current Address",
                                            ),
                                             CommonTextForm(
                                              title: "Permanent Address",
                                            ),
                                            
                              
                                          ],
                                        ),
                                      ),
                                      Container(
                                        margin:
                                            const EdgeInsets.all(AppMargin.m8),
                                        padding:
                                            const EdgeInsets.all(AppPadding.p8),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            border: Border.all(
                                                color: AppColors.grey2)),
                                        child: const Column(
                                          children: [
                                            AdmissionHeader(
                                                title: "Parent Information"),
                                            CommonTextForm(
                                              title: "Father's Name",
                                            ),
                                            CommonTextForm(
                                              title: "Mother's Name",
                                            ),
                                            CommonTextForm(
                                              title: "Father's NID",
                                            ),
                                            CommonTextForm(
                                              title: "Phone Number",
                                            ),
                                            CommonTextForm(
                                              title: "Guardian Number",
                                            ),
                                          ],
                                        ),
                                      ),
                                    
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Divider(
                                      thickness: .5,
                                      color: AppColors.grey2,
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin:
                                            const EdgeInsets.all(AppMargin.m8),
                                        padding:
                                            const EdgeInsets.all(AppPadding.p8),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            border: Border.all(
                                              width: 0.5,
                                                color: AppColors.grey2)),
                                        child: const Column(
                                          children: [
                                            AdmissionHeader(
                                                title: "Others Information"),
                                            CommonTextForm(
                                              title: "Monthly Fee",
                                            ),
                                            CommonTextForm(
                                              title: "Discount TK",
                                            ),
                                             CommonDropdownButton(
                                              list: ['Van', 'Micro Bus','Others'],
                                            ),
                                             CommonTextForm(
                                              title: "Transport Fee",
                                            ),
                                             CommonTextForm(
                                              title: "Create Parent Account",
                                            ),
                                            
                                          ],
                                        ),
                                      ),
                                        Container(
                                        margin:
                                            const EdgeInsets.all(AppMargin.m8),
                                        padding:
                                            const EdgeInsets.all(AppPadding.p8),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            border: Border.all(
                                                width: 0.5,
                                                color: AppColors.grey2)),
                                        child: const Column(
                                          children: [
                                            AdmissionHeader(
                                                title: "Academic Information"),
                                            CommonTextForm(
                                              title: "Student ID",
                                            ),
                                             CommonTextForm(
                                              title: "campus",
                                            ),
                                              CommonTextForm(
                                              title: "class",
                                            ),
                                            CommonTextForm(
                                              title: "Section",
                                            ),
                                             CommonTextForm(
                                              title: "Admission Date",
                                            ), CommonTextForm(
                                              title: "Previous School",
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
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              : Dimensions.isTablet(context)
                  ? SingleChildScrollView(
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin:
                                            const EdgeInsets.all(AppMargin.m8),
                                        padding:
                                            const EdgeInsets.all(AppPadding.p4),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            border: Border.all(
                                                color: AppColors.grey2)),
                                        child: const Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            AdmissionHeader(
                                                title: "Student Information"),
                                            CommonTextForm(
                                              title: "Student Name",
                                            ),
                                            CommonDropdownButton(
                                              list: ['Male', 'Female','third gender'],
                                            ),CommonTextForm(
                                              title: "Date of Birth",
                                            ),CommonTextForm(
                                              title: "Religion",
                                            ),
                                            CommonTextForm(
                                              title: "Current Address",
                                            ),
                                             CommonTextForm(
                                              title: "Permanent Address",
                                            ),
                              
                                          ],
                                        ),
                                      ),
                                      Container(
                                        margin:
                                            const EdgeInsets.all(AppMargin.m8),
                                        padding:
                                            const EdgeInsets.all(AppPadding.p8),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            border: Border.all(
                                                color: AppColors.grey2)),
                                        child: const Column(
                                          children: [
                                            AdmissionHeader(
                                                title: "Parent Information"),
                                            CommonTextForm(
                                              title: "Father's Name",
                                            ),
                                            CommonTextForm(
                                              title: "Mother's Name",
                                            ),
                                            CommonTextForm(
                                              title: "Father's NID",
                                            ),
                                            CommonTextForm(
                                              title: "Phone Number",
                                            ),
                                            CommonTextForm(
                                              title: "Guardian Number",
                                            ),
                                          ],
                                        ),
                                      ),
                                    
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Divider(
                                      thickness: .5,
                                      color: AppColors.grey2,
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin:
                                            const EdgeInsets.all(AppMargin.m8),
                                        padding:
                                            const EdgeInsets.all(AppPadding.p8),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            border: Border.all(
                                              width: 0.5,
                                                color: AppColors.grey2)),
                                        child: const Column(
                                          children: [
                                            AdmissionHeader(
                                                title: "Others Information"),
                                            CommonTextForm(
                                              title: "Monthly Fee",
                                            ),
                                            CommonTextForm(
                                              title: "Discount TK",
                                            ),
                                             CommonDropdownButton(
                                              list: ['Van', 'Micro Bus','Others'],
                                            ),
                                             CommonTextForm(
                                              title: "Transport Fee",
                                            ),
                                             CommonTextForm(
                                              title: "Create Parent Account",
                                            ),
                                            
                                          ],
                                        ),
                                      ),
                                        Container(
                                        margin:
                                            const EdgeInsets.all(AppMargin.m8),
                                        padding:
                                            const EdgeInsets.all(AppPadding.p8),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            border: Border.all(
                                                width: 0.5,
                                                color: AppColors.grey2)),
                                        child: const Column(
                                          children: [
                                            AdmissionHeader(
                                                title: "Academic Information"),
                                            CommonTextForm(
                                              title: "Student ID",
                                            ),
                                             CommonTextForm(
                                              title: "campus",
                                            ),
                                              CommonTextForm(
                                              title: "class",
                                            ),
                                            CommonTextForm(
                                              title: "Section",
                                            ),
                                             CommonTextForm(
                                              title: "Admission Date",
                                            ), CommonTextForm(
                                              title: "Previous School",
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
                            )
                  : const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        //  mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          AdmissionHeader(title: "Student Information"),
                          CommonTextForm(
                            title: "Student Name",
                          ),
                          CommonTextForm(
                            title: "Student Name",
                          )
                        ],
                      ),
                    ));
    });
  }
}
