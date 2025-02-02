import 'package:dio/dio.dart';
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
  getIt.registerSingleton<LoginRepo> (LoginRepo(getIt()));
  getIt.registerSingleton<LoginCubit> (LoginCubit(getIt()));

}




