import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:school_management_system_app/api_services/Dio/logging_interceptor.dart';
import 'package:school_management_system_app/provider/api_provider.dart';
import 'package:school_management_system_app/provider/operations.dart';

import 'package:shared_preferences/shared_preferences.dart';

import 'api_services/Dio/dio_client.dart';
import 'api_services/Repository/api_repo.dart';
import 'utils/constants.dart';


final sl = GetIt.instance;

Future<void> init() async {
  

  sl.registerLazySingleton(() => DioClient(AppConstants.baseUrl, sl(),
      loggingInterceptor: sl(), sharedPreferences: sl()));

  //Repository
  sl.registerLazySingleton(
      () => ApiRepo(dioClient: sl(), sharedPreferences: sl()));


  final sharedPreference = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPreference);

  sl.registerFactory<ApiProvider>(() => ApiProvider(sl()));
  sl.registerFactory<OperationProvider>(() => OperationProvider());
 
 
  
  sl.registerLazySingleton(() => Dio());
  sl.registerLazySingleton(() => LoggingInterceptor());
}
