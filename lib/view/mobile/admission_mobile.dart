import 'package:flutter/material.dart';
import 'package:school_management_system_app/utils/colors.dart';
import 'package:school_management_system_app/utils/values_manager.dart';
import 'package:school_management_system_app/widgets/admissiom_header.dart';

import '../../widgets/common_text_form.dart';

class AdmissionFormMobile extends StatelessWidget {
  const AdmissionFormMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: const Padding(
        padding: EdgeInsets.all(AppPadding.p8),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      AdmissionHeader(
                        title: "Student information",
                      ),
                      CommonTextForm(
                        title: "Name",
                      ),
                       AdmissionHeader(
                        title: "Parent information",
                      ),
                      CommonTextForm(
                        title: "Father Name",
                      ),
                      CommonTextForm(
                        title: "Father NID",
                      ),
                      CommonTextForm(
                        title: "Mother Name",
                      ),
                      CommonTextForm(
                        title: "Father Phone",
                      ),
                       AdmissionHeader(
                        title: "Others information",
                      ),
                       AdmissionHeader(
                        title: "Academic information",
                      )
                    ],
                  ),
                 
                ],
              ),
            
            ],
          ),
        ),
      ),
    );
  }
}
