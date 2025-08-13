import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:school_management_system_app/view/home/dashboard.dart';
import 'package:school_management_system_app/provider/api_provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    
    super.initState();
    token();
   
  }
  token(){
      var ap = Provider.of<ApiProvider>(context, listen: false);
      ap.jwtCall(context);
  

  }
  @override
  Widget build(BuildContext context) {
    return const Dashboard();
  }
}