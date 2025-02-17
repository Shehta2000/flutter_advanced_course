import 'package:dio/dio.dart';
import 'package:flutter_advanced_course/features/sign_up/logic/sign_up_cubit.dart';
import '../../features/sign_up/data/repos/sign_up_repo.dart';
import '../networking/api_service.dart';
import '../../features/login/data/repos/login__repo.dart';
import '../../features/login/logic/cubit/login_cubit.dart';
import 'package:get_it/get_it.dart';
import '../networking/dio_factory.dart';

final getIt = GetIt.instance;

Future<void> setupGetit() async {
 
    // dio & ApiService
  Dio dio =   DioFactory.getDio();

  getIt.registerSingleton<ApiService> (ApiService(dio));

  //* login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

  //* signup
  getIt.registerLazySingleton<SignupRepo>(() => SignupRepo(getIt()));
  getIt.registerFactory<SignupCubit>(() => SignupCubit(getIt()));

}




