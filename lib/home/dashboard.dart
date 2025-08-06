import 'package:flutter/material.dart';
import 'package:school_management_system_app/view/desktop/desktop_dashboard.dart';
import 'package:school_management_system_app/view/mobile/mobile_dashboard.dart';
import 'package:school_management_system_app/view/tablet/tablet_dashboard.dart';
import 'package:school_management_system_app/widgets/responsive.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
        mobile: MobileDashboard(),
        tablet: TabletDashboard(),
        desktop: DesktopDashboard());
  }
}
