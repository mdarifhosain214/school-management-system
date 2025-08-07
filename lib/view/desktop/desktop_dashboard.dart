
import 'package:flutter/material.dart';
import 'package:school_management_system_app/utils/colors.dart';
import 'package:school_management_system_app/utils/values_manager.dart';
import 'package:school_management_system_app/view/drawer/drawer_screen.dart';

class DesktopDashboard extends StatelessWidget {
  const DesktopDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   
    
     
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            height: 70,width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(color: AppColors.primary),
            child: Row(children: [ 
              const Padding(
                padding: EdgeInsets.all(4.0),
                child: CircleAvatar(maxRadius: 30,),
              ),
              IconButton(
                highlightColor: AppColors.grey1 ,
                splashColor: AppColors.grey1,
                onPressed: (){}, icon: Icon(Icons.search,color: AppColors.white,size: AppSize.s28,))
            ],),
          ),
          Expanded(
            child: Row(children: [
              SizedBox (
            
               width: MediaQuery.of(context).size.width*0.17,
                child:  DrawerScreen()),
              SizedBox(
                  width:   MediaQuery.of(context).size.width- MediaQuery.of(context).size.width*0.17,
              
                child:const Column(children: [ 
                 
                  Text("data")
                ],),),
            ],),
          ),
        ],
      ),
    );
  }
}