import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:school_management_system_app/provider/operations.dart';
import 'package:school_management_system_app/utils/colors.dart';
import 'package:school_management_system_app/utils/router_manager.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<OperationProvider>(builder: (context, op, child) {
      return Drawer(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
        backgroundColor: const Color(0xff1d1d42),
        child: ListView(
          children: [
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, Routes.admissionRoute);
              },
              title: const Text("Admission Management",
                  style: TextStyle(color: Colors.white)),
              leading: const Icon(Icons.person_add_alt_1, color: Colors.white),
              horizontalTitleGap: 10,
              hoverColor: AppColors.grey2,
            ),
            ListTile(
              onTap: () {},
              title: const Text("Students Management",
                  style: TextStyle(color: Colors.white)),
              leading: const Icon(Icons.diversity_3, color: Colors.white),
              horizontalTitleGap: 10,
              hoverColor: AppColors.grey2,
            ),
            ListTile(
              onTap: () {},
              title: const Text("Staff Management",
                  style: TextStyle(color: Colors.white)),
              leading: const Icon(Icons.group, color: Colors.white),
              horizontalTitleGap: 10,
              hoverColor: AppColors.grey2,
            ),
            ListTile(
              onTap: () {},
              title:
                  const Text("Classes", style: TextStyle(color: Colors.white)),
              leading: const Icon(Icons.class_outlined, color: Colors.white),
              horizontalTitleGap: 10,
              hoverColor: AppColors.grey2,
            ),
            MouseRegion(
              onEnter: (_) => op.isHovere(isHovered: true),
              onExit: (_) => op.isHovere(isHovered: false),
              child: ListTile(
                onTap: () {},
                title: AnimatedDefaultTextStyle(
                  duration: const Duration(milliseconds: 200),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: op.isHovered ? 14 : 12, // Change size on hover
                  ),
                  child: const Text("Students Management"),
                ),
                leading: Icon(
                  Icons.diversity_3,
                  color: Colors.white,
                  size: op.isHovered ? 26 : 24,
                ),
                horizontalTitleGap: 10,
                hoverColor: AppColors.grey2,
              ),
            ),
            ListTile(
              onTap: () {},
              title:
                  const Text("Subjects", style: TextStyle(color: Colors.white)),
              leading: const Icon(Icons.library_books, color: Colors.white),
              horizontalTitleGap: 10,
              hoverColor: AppColors.grey2,
            ),
            ListTile(
              onTap: () {},
              title: const Text("Attendance Management",
                  style: TextStyle(color: Colors.white)),
              leading: const Icon(Icons.bar_chart, color: Colors.white),
              horizontalTitleGap: 10,
              hoverColor: AppColors.grey2,
            ),
            ListTile(
              onTap: () {},
              title: const Text("Timetable Management",
                  style: TextStyle(color: Colors.white)),
              leading: const Icon(Icons.calendar_view_month_outlined,
                  color: Colors.white),
              horizontalTitleGap: 10,
              hoverColor: AppColors.grey2,
            ),
            ListTile(
              onTap: () {},
              title:
                  const Text("Accounts", style: TextStyle(color: Colors.white)),
              leading: const Icon(Icons.account_balance, color: Colors.white),
              horizontalTitleGap: 10,
              hoverColor: AppColors.grey2,
            ),
            ListTile(
              onTap: () {},
              title: const Text("Fee Payment",
                  style: TextStyle(color: Colors.white)),
              leading: const Icon(Icons.payment, color: Colors.white),
              horizontalTitleGap: 10,
              hoverColor: AppColors.grey2,
            ),
            ListTile(
              onTap: () {},
              title: const Text("Expense Management",
                  style: TextStyle(color: Colors.white)),
              leading: const Icon(Icons.exposure, color: Colors.white),
              horizontalTitleGap: 10,
              hoverColor: AppColors.grey2,
            ),
            ListTile(
              onTap: () {},
              title: const Text("Staff Salary Management",
                  style: TextStyle(color: Colors.white)),
              leading: const Icon(Icons.account_balance, color: Colors.white),
              horizontalTitleGap: 10,
              hoverColor: AppColors.grey2,
            ),
            ListTile(
              onTap: () {},
              title: const Text("Stock & Inventory",
                  style: TextStyle(color: Colors.white)),
              leading: const Icon(Icons.inventory, color: Colors.white),
              horizontalTitleGap: 10,
              hoverColor: AppColors.grey2,
            ),
            ListTile(
              onTap: () {},
              title: const Text("Exam Management",
                  style: TextStyle(color: Colors.white)),
              leading: const Icon(Icons.monitor, color: Colors.white),
              horizontalTitleGap: 10,
              hoverColor: AppColors.grey2,
            ),
            ListTile(
              onTap: () {},
              title: const Text("Certification",
                  style: TextStyle(color: Colors.white)),
              leading: const Icon(Icons.account_balance, color: Colors.white),
              horizontalTitleGap: 10,
              hoverColor: AppColors.grey2,
            ),
            ListTile(
              onTap: () {},
              title: const Text("Online Classes",
                  style: TextStyle(color: Colors.white)),
              leading: const Icon(Icons.account_balance, color: Colors.white),
              horizontalTitleGap: 10,
              hoverColor: AppColors.grey2,
            ),
            ListTile(
              onTap: () {},
              title: const Text("SMS Management",
                  style: TextStyle(color: Colors.white)),
              leading: const Icon(Icons.account_balance, color: Colors.white),
              horizontalTitleGap: 10,
              hoverColor: AppColors.grey2,
            ),
            ListTile(
              onTap: () {},
              title: const Text("Reporting Area",
                  style: TextStyle(color: Colors.white)),
              leading: const Icon(Icons.account_balance, color: Colors.white),
              horizontalTitleGap: 10,
              hoverColor: AppColors.grey2,
            ),
            ListTile(
              onTap: () {},
              title: const Text("Parent Accounts",
                  style: TextStyle(color: Colors.white)),
              leading: const Icon(Icons.account_balance, color: Colors.white),
              horizontalTitleGap: 10,
              hoverColor: AppColors.grey2,
            ),
            ListTile(
              onTap: () {},
              title: const Text("Study Materils",
                  style: TextStyle(color: Colors.white)),
              leading: const Icon(Icons.account_balance, color: Colors.white),
              horizontalTitleGap: 10,
              hoverColor: AppColors.grey2,
            ),
            ListTile(
              onTap: () {},
              title: const Text("Video Tutorials",
                  style: TextStyle(color: Colors.white)),
              leading: const Icon(Icons.video_file, color: Colors.white),
              horizontalTitleGap: 10,
              hoverColor: AppColors.grey2,
            ),
            ListTile(
              onTap: () {},
              title: const Text("Daily Homework Diary",
                  style: TextStyle(color: Colors.white)),
              leading: const Icon(Icons.video_file, color: Colors.white),
              horizontalTitleGap: 10,
              hoverColor: AppColors.grey2,
            ),
            ListTile(
              onTap: () {},
              title: const Text("School Noticeboard",
                  style: TextStyle(color: Colors.white)),
              leading: const Icon(Icons.video_file, color: Colors.white),
              horizontalTitleGap: 10,
              hoverColor: AppColors.grey2,
            ),
            ListTile(
              onTap: () {},
              title: const Text("Leave Management",
                  style: TextStyle(color: Colors.white)),
              leading:
                  const Icon(Icons.time_to_leave_sharp, color: Colors.white),
              horizontalTitleGap: 10,
              hoverColor: AppColors.grey2,
            ),
            ListTile(
              onTap: () {},
              title: const Text("Transport Management",
                  style: TextStyle(color: Colors.white)),
              leading:
                  const Icon(Icons.emoji_transportation, color: Colors.white),
              horizontalTitleGap: 10,
              hoverColor: AppColors.grey2,
            ),
          ],
        ),
      );
    });
  }
}
