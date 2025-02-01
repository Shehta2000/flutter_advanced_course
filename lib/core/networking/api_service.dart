import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../../features/login/data/models/login_request_body.dart';
import '../../features/login/data/models/login_response.dart';
import 'api_constans.dart';
part "api_service.g.dart";
@RestApi(baseUrl: ApiConstans.baseUrl)
abstract class ApiService {

factory  ApiService(Dio dio ,{ String baseUrl}) = _ApiService;

@POST(ApiConstans.login)
Future<LoginResponse> login(@Body() LoginRequestBody loginRequestBody);

}