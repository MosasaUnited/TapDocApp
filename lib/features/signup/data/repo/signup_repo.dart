import 'package:tap_doc_app/core/networking/api_error_handler.dart';
import 'package:tap_doc_app/core/networking/api_result.dart';
import 'package:tap_doc_app/core/networking/api_service.dart';
import 'package:tap_doc_app/features/signup/data/models/signup_response.dart';

import '../models/signup_request_body.dart';

class SignupRepo {
  final ApiService _apiService;

  SignupRepo(this._apiService);

  Future<ApiResult<SignupResponse>> signup(
      SignupRequestBody signupRequestBody) async {
    try {
      final response = await _apiService.signup(signupRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
