
import 'package:flutter_advanced_course/core/networking/api_error_handler.dart';
import 'package:flutter_advanced_course/features/sign_up/data/models/sign_up_response_body.dart';
import '../../../../core/networking/api_result.dart';
import '../../../../core/networking/api_service.dart';
import '../models/sign_up_request_body.dart';

class SignupRepo {
  final ApiService _apiService;

  SignupRepo(this._apiService);

  Future<ApiResult<SignUpResponse>> signup(
      SignupRequestBody signupRequestBody) async {
    try {
      final response = await _apiService.register(signupRequestBody);
      return ApiResult.success(response);
    } catch (errro) {
      return ApiResult.faliare(ErrorHandler.handle(errro));
    }
  }
}