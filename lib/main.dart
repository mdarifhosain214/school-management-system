import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:school_management_system_app/view/home/home_screen.dart';
import 'package:school_management_system_app/provider/api_provider.dart';
import 'package:school_management_system_app/provider/operations.dart';
import 'package:school_management_system_app/utils/router_manager.dart';
import 'package:school_management_system_app/utils/theme_manager.dart';
import 'package:school_management_system_app/service_locator.dart'as di;



void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => di.sl<ApiProvider>()),
   
    ChangeNotifierProvider(create: (context) =>di.sl <OperationProvider>()),
  ], child: const MyApp()));
    
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'ASM-APP',
        debugShowCheckedModeBanner: false,
        onGenerateRoute: RouteGenerator.getRoute,
        initialRoute: Routes.home,
        theme: getApplicationTheme(),
        home: const HomeScreen());
  }
}
