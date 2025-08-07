import 'package:flutter/material.dart';
import 'package:school_management_system_app/view/drawer/drawer_screen.dart';

class MobileDashboard extends StatelessWidget {
  const MobileDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:AppBar() ,
      drawer:  DrawerScreen(),
      backgroundColor: Colors.amber,
    );
  }
}