import 'package:flutter/material.dart';
import 'package:school_management_system_app/view/drawer/drawer_screen.dart';

class DesktopDashboard extends StatelessWidget {
  const DesktopDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Row(children: [
        Expanded(
          flex: 1,
          child: DrawerScreen()),
        Expanded(
          flex:MediaQuery.of(context).size.width<1700? 4:5,
          child: Container(
            child: Text("${MediaQuery.of(context).size.width}"),
          ),),
      ],),
    );
  }
}