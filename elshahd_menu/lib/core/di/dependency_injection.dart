import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../networking/api_service.dart';
import '../networking/dio_factory.dart';


final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  //Dio & ApiService
  Dio dio = await DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));
//   //Login
//   getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
//   getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));
//   getIt.registerLazySingleton<SignupRepo>(() => SignupRepo(getIt()));
//   getIt.registerFactory<SignupCubit>(() => SignupCubit(getIt()));
// }
