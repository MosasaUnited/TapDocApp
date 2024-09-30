import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:tap_doc_app/core/networking/api_constants.dart';
import 'package:tap_doc_app/features/login/data/models/login_response.dart';

import '../../features/login/data/models/login_request_body.dart';
import '../../features/signup/data/models/signup_request_body.dart';
import '../../features/signup/data/models/signup_response.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstants.login)
  Future<LoginResponse> login(
    @Body() LoginRequestBody loginRequestBody,
  );

  @POST(ApiConstants.signUp)
  Future<SignupResponse> signup(
    @Body() SignupRequestBody signupRequestBody,
  );
}
