import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:school_management_system_app/provider/operations.dart';
import 'package:school_management_system_app/utils/colors.dart';
import 'package:school_management_system_app/utils/values_manager.dart';
import 'package:school_management_system_app/view/drawer/drawer_screen.dart';
import 'package:school_management_system_app/widgets/admission_header.dart';
import '../../provider/api_provider.dart';
import '../../utils/dimension.dart';
import '../../utils/router_manager.dart';
import '../../widgets/common_drop_btn.dart';
import '../../widgets/common_text_form.dart';
import '../../widgets/custom_btn.dart';

class AdmissionDesktopForm extends StatefulWidget {
  const AdmissionDesktopForm({super.key});

  @override
  State<AdmissionDesktopForm> createState() => _AdmissionDesktopFormState();
}

class _AdmissionDesktopFormState extends State<AdmissionDesktopForm> {
  //*****************student information controller ****************************
  final TextEditingController stdNameCtrl = TextEditingController();
  final TextEditingController dOBCtrl = TextEditingController();
  final TextEditingController dOBNoCtrl = TextEditingController();
  final TextEditingController gendCtrl = TextEditingController();
  final TextEditingController stdModCtrl = TextEditingController();
  final TextEditingController stdMailCtrl = TextEditingController();
  final TextEditingController stdCAdrCtrl = TextEditingController();
  final TextEditingController stdPAdrCtrl = TextEditingController();

  //*****************parent information controller ****************************
  final TextEditingController fathNameCtrl = TextEditingController();
  final TextEditingController fathNIDCtrl = TextEditingController();
  final TextEditingController fathMobCtrl = TextEditingController();
  final TextEditingController mothNameCtrl = TextEditingController();
  final TextEditingController mothMobCtrl = TextEditingController();

  //*****************Academic information controller ****************************
  final TextEditingController clsIdCtrl = TextEditingController();
  final TextEditingController secIdCtrl = TextEditingController();
  final TextEditingController prevInstCtrl = TextEditingController();
   //*****************Others information controller ****************************
    final TextEditingController guarNameCtrl = TextEditingController();
    final TextEditingController guarModCtrl = TextEditingController();

//*****************student information focus node ****************************
  FocusNode stdNameFocusNode = FocusNode();
  FocusNode dOBFocusNode = FocusNode();
  FocusNode dOBNoFocusNode = FocusNode();
  FocusNode stdModFocusNode = FocusNode();
  FocusNode stdMailFocusNode = FocusNode();
  FocusNode stdCAdrFocusNode = FocusNode();
  FocusNode stdPAdrFocusNode = FocusNode();

  //*****************parent information focus node ****************************
  FocusNode fathNameFocusNode = FocusNode();
  FocusNode fathMobFocusNode = FocusNode();
  FocusNode fathNIDFocusNode = FocusNode();
  FocusNode mothNameFocusNode = FocusNode();
  FocusNode mothMobFocusNode = FocusNode();

  //*****************academic information focus node ****************************
  FocusNode clsIdFocusNode = FocusNode();
  FocusNode secIdFocusNode = FocusNode();
  FocusNode prevInstFocusNode = FocusNode();

  //*****************others information focus node ****************************
   FocusNode guarNameFocusNode = FocusNode();
   FocusNode guarMobFocusNode = FocusNode();
  @override
  void dispose() {
    //***************** dispose student information controller ****************************
    stdNameCtrl.dispose();
    dOBCtrl.dispose();
    gendCtrl.dispose();
    dOBNoCtrl.dispose();
    stdModCtrl.dispose();
    stdMailCtrl.dispose();
    stdCAdrCtrl.dispose();
    stdPAdrCtrl.dispose();
    //***************** dispose parent information controller ****************************
    fathNameCtrl.dispose();
    fathNIDCtrl.dispose();
    fathMobCtrl.dispose();
    mothNameCtrl.dispose();
    mothMobCtrl.dispose();

    //***************** dispose academic information controller ****************************
    clsIdCtrl.dispose();
    prevInstCtrl.dispose();

     //***************** dispose academic information controller ****************************
     guarNameCtrl.dispose();
     guarModCtrl.dispose();

    //***************** dispose student information focus node ****************************
    stdNameFocusNode.dispose();
    dOBFocusNode.dispose();
    dOBNoFocusNode.dispose();
    stdModFocusNode.dispose();
    stdMailFocusNode.dispose();
    stdCAdrCtrl.dispose();
    stdPAdrFocusNode.dispose();
    

    //***************** dispose parent information focus node ****************************
    fathNameFocusNode.dispose();
    fathNIDFocusNode.dispose();
    fathMobFocusNode.dispose();
    mothNameFocusNode.dispose();
    mothMobFocusNode.dispose();

    //***************** dispose academic information focus node ****************************
    clsIdFocusNode.dispose();
    prevInstFocusNode.dispose(); 

    //***************** dispose others information focus node ****************************
    guarNameFocusNode.dispose();
    guarMobFocusNode.dispose();

    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      if (mounted) {
        var op = Provider.of<OperationProvider>(context, listen: false);
        op.selectDate(context: context, textController: dOBCtrl);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer2<ApiProvider, OperationProvider>(
        builder: (context, ap, op, child) {
      return Scaffold(
          resizeToAvoidBottomInset: true,
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                           const AdmissionHeader(title: "Student Information"),
                            CommonTextForm(
                                title: "student name",
                                textController: stdNameCtrl,
                                focusNode: stdNameFocusNode),
                            CommonDropdownButton(
                              list: ['male', 'female'],
                              textController: gendCtrl,
                            ),
                            CommonTextForm(
                              title: "DOB",
                              textController: dOBCtrl,
                              focusNode: dOBFocusNode,
                              suffixIconData: Icons.calendar_month,
                              onPressed: () {
                                op.selectDate(
                                    context: context,
                                    textController: dOBCtrl,
                                    select: '');
                              },
                            ),
                             CommonTextForm(
                                title: "Birth Certification No",
                                textController: dOBNoCtrl,
                                focusNode: dOBNoFocusNode),
                            CommonTextForm(
                                title: "Mobile",
                                textController: stdModCtrl,
                                focusNode: stdModFocusNode),
                            CommonTextForm(
                                title: "Email",
                                textController: stdMailCtrl,
                                focusNode: stdMailFocusNode),
                            CommonTextForm(
                              title: "Current address",
                              textController: stdCAdrCtrl,
                              focusNode: stdCAdrFocusNode,
                              maxLine: 3,
                            ),
                             CommonTextForm(
                              title: "Permanent address",
                              textController: stdCAdrCtrl,
                              focusNode: stdCAdrFocusNode,
                              maxLine: 3,
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
                                        child:  Column(
                                          children: [
                                            const AdmissionHeader(title: "Parent Information"),
                            CommonTextForm(
                              title: "Father name",
                              textController: fathNameCtrl,
                              focusNode: fathNameFocusNode,
                            ),
                            CommonTextForm(
                              title: "Father NID",
                              textController: fathNIDCtrl,
                              focusNode: fathNIDFocusNode,
                            ),
                            CommonTextForm(
                              title: "Father Mobile",
                              textController: fathMobCtrl,
                              focusNode: fathMobFocusNode,
                            ),
                            CommonTextForm(
                              title: "Mother name",
                              textController: mothNameCtrl,
                              focusNode: mothNameFocusNode,
                            ),
                            CommonTextForm(
                              title: "Mother Mobile",
                              textController: mothMobCtrl,
                              focusNode: mothMobFocusNode,
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                        child:  Column(
                                          children: [
                                             const AdmissionHeader(
                                title: "Others Information"),
                                 CommonTextForm(
                              title: "Guardian name",
                              textController: guarNameCtrl,
                              focusNode: guarNameFocusNode,
                            ),
                             CommonTextForm(
                              title: "Guardian Mobile",
                              textController: guarModCtrl,
                              focusNode: guarMobFocusNode,
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
                                        child:  Column(
                                          children: [
                                           const AdmissionHeader(
                                title: "Academic Information"),
                            CommonDropdownButton(
                              list: const ['Play', 'Nursery', 'KG'],
                              textController: clsIdCtrl,
                            ),
                             CommonDropdownButton(
                              list: const ['Section A', 'Section B', 'Section C'],
                              textController: secIdCtrl,
                            ),
                            CommonTextForm(
                              title: " Previous school",
                              textController: prevInstCtrl,
                              focusNode: prevInstFocusNode,
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
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: const EdgeInsets.all(AppMargin.m8),
                                padding: const EdgeInsets.all(AppPadding.p4),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(color: AppColors.grey2)),
                                child:  Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                     const AdmissionHeader(title: "Student Information"),
                            CommonTextForm(
                                title: "student name",
                                textController: stdNameCtrl,
                                focusNode: stdNameFocusNode),
                            CommonDropdownButton(
                              list: ['male', 'female'],
                              textController: gendCtrl,
                            ),
                            CommonTextForm(
                              title: "DOB",
                              textController: dOBCtrl,
                              focusNode: dOBFocusNode,
                              suffixIconData: Icons.calendar_month,
                              onPressed: () {
                                op.selectDate(
                                    context: context,
                                    textController: dOBCtrl,
                                    select: '');
                              },
                            ),
                             CommonTextForm(
                                title: "Birth Certification No",
                                textController: dOBNoCtrl,
                                focusNode: dOBNoFocusNode),
                            CommonTextForm(
                                title: "Mobile",
                                textController: stdModCtrl,
                                focusNode: stdModFocusNode),
                            CommonTextForm(
                                title: "Email",
                                textController: stdMailCtrl,
                                focusNode: stdMailFocusNode),
                            CommonTextForm(
                              title: "Current address",
                              textController: stdCAdrCtrl,
                              focusNode: stdCAdrFocusNode,
                              maxLine: 3,
                            ),
                             CommonTextForm(
                              title: "Permanent address",
                              textController: stdCAdrCtrl,
                              focusNode: stdCAdrFocusNode,
                              maxLine: 3,
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
                                child:  Column(
                                  children: [
                                    const AdmissionHeader(title: "Parent Information"),
                            CommonTextForm(
                              title: "Father name",
                              textController: fathNameCtrl,
                              focusNode: fathNameFocusNode,
                            ),
                            CommonTextForm(
                              title: "Father NID",
                              textController: fathNIDCtrl,
                              focusNode: fathNIDFocusNode,
                            ),
                            CommonTextForm(
                              title: "Father Mobile",
                              textController: fathMobCtrl,
                              focusNode: fathMobFocusNode,
                            ),
                            CommonTextForm(
                              title: "Mother name",
                              textController: mothNameCtrl,
                              focusNode: mothNameFocusNode,
                            ),
                            CommonTextForm(
                              title: "Mother Mobile",
                              textController: mothMobCtrl,
                              focusNode: mothMobFocusNode,
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
                                margin: const EdgeInsets.all(AppMargin.m8),
                                padding: const EdgeInsets.all(AppPadding.p8),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(
                                        width: 0.5, color: AppColors.grey2)),
                                child:  Column(
                                  children: [
                                    const AdmissionHeader(
                                title: "Others Information"),
                                 CommonTextForm(
                              title: "Guardian name",
                              textController: guarNameCtrl,
                              focusNode: guarNameFocusNode,
                            ),
                             CommonTextForm(
                              title: "Guardian Mobile",
                              textController: guarModCtrl,
                              focusNode: guarMobFocusNode,
                            ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.all(AppMargin.m8),
                                padding: const EdgeInsets.all(AppPadding.p8),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(
                                        width: 0.5, color: AppColors.grey2)),
                                child:  Column(
                                  children: [
                                    const AdmissionHeader(
                                title: "Academic Information"),
                            CommonDropdownButton(
                              list: const ['Play', 'Nursery', 'KG'],
                              textController: clsIdCtrl,
                            ),
                             CommonDropdownButton(
                              list: const ['Section A', 'Section B', 'Section C'],
                              textController: secIdCtrl,
                            ),
                            CommonTextForm(
                              title: " Previous school",
                              textController: prevInstCtrl,
                              focusNode: prevInstFocusNode,
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
                  : Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SingleChildScrollView(
                        child: Column(
                          //  mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const AdmissionHeader(title: "Student Information"),
                            CommonTextForm(
                                title: "student name",
                                textController: stdNameCtrl,
                                focusNode: stdNameFocusNode),
                            CommonDropdownButton(
                              list: ['male', 'female'],
                              textController: gendCtrl,
                            ),
                            CommonTextForm(
                              title: "DOB",
                              textController: dOBCtrl,
                              focusNode: dOBFocusNode,
                              suffixIconData: Icons.calendar_month,
                              onPressed: () {
                                op.selectDate(
                                    context: context,
                                    textController: dOBCtrl,
                                    select: '');
                              },
                            ),
                             CommonTextForm(
                                title: "Birth Certification No",
                                textController: dOBNoCtrl,
                                focusNode: dOBNoFocusNode),
                            CommonTextForm(
                                title: "Mobile",
                                textController: stdModCtrl,
                                focusNode: stdModFocusNode),
                            CommonTextForm(
                                title: "Email",
                                textController: stdMailCtrl,
                                focusNode: stdMailFocusNode),
                            CommonTextForm(
                              title: "Current address",
                              textController: stdCAdrCtrl,
                              focusNode: stdCAdrFocusNode,
                              maxLine: 3,
                            ),
                             CommonTextForm(
                              title: "Permanent address",
                              textController: stdCAdrCtrl,
                              focusNode: stdCAdrFocusNode,
                              maxLine: 3,
                            ),
                            const AdmissionHeader(title: "Parent Information"),
                            CommonTextForm(
                              title: "Father name",
                              textController: fathNameCtrl,
                              focusNode: fathNameFocusNode,
                            ),
                            CommonTextForm(
                              title: "Father NID",
                              textController: fathNIDCtrl,
                              focusNode: fathNIDFocusNode,
                            ),
                            CommonTextForm(
                              title: "Father Mobile",
                              textController: fathMobCtrl,
                              focusNode: fathMobFocusNode,
                            ),
                            CommonTextForm(
                              title: "Mother name",
                              textController: mothNameCtrl,
                              focusNode: mothNameFocusNode,
                            ),
                            CommonTextForm(
                              title: "Mother Mobile",
                              textController: mothMobCtrl,
                              focusNode: mothMobFocusNode,
                            ),
                            const AdmissionHeader(
                                title: "Academic Information"),
                            CommonDropdownButton(
                              list: const ['Play', 'Nursery', 'KG'],
                              textController: clsIdCtrl,
                            ),
                             CommonDropdownButton(
                              list: const ['Section A', 'Section B', 'Section C'],
                              textController: secIdCtrl,
                            ),
                            CommonTextForm(
                              title: " Previous school",
                              textController: prevInstCtrl,
                              focusNode: prevInstFocusNode,
                            ),
                            const AdmissionHeader(
                                title: "Others Information"),
                                 CommonTextForm(
                              title: "Guardian name",
                              textController: guarNameCtrl,
                              focusNode: guarNameFocusNode,
                            ),
                             CommonTextForm(
                              title: "Guardian Mobile",
                              textController: guarModCtrl,
                              focusNode: guarMobFocusNode,
                            ),
                            CustomButton(
                              title: '',
                              onTap: () {
                                log("btn press");
                              },
                            )
                          ],
                        ),
                      ),
                    ));
    });
  }
}
