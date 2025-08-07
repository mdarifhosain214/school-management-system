import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:school_management_system_app/home/home_screen.dart';
import 'package:school_management_system_app/provider/operations.dart';
import 'package:school_management_system_app/utils/router_manager.dart';
import 'package:school_management_system_app/utils/theme_manager.dart';




void main() {
  WidgetsFlutterBinding.ensureInitialized();
 


  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (_)=>OperationProvider())
    ],
    child: const MyApp()
    )
    );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'ASM-APP',
        debugShowCheckedModeBanner: false,
        onGenerateRoute: RouteGenerator.getRoute,
        initialRoute: Routes.splashRoute,
        theme: getApplicationTheme(),
        home: const HomeScreen() //AdmissionForm() //
        );
  }
}
