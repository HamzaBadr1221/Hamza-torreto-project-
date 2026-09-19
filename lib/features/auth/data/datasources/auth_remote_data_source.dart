import 'package:dio/dio.dart';

import '../../../../core/network/api_constants.dart';
import '../models/login_request.dart';
import '../models/login_response.dart';
import '../models/register_request.dart';
import '../models/resend_otp_request.dart';
import '../models/verify_email_request.dart';

class AuthRemoteDataSource {
  final Dio dio;

  AuthRemoteDataSource(this.dio);

  Future<LoginResponse> login(LoginRequest request) async {
    final response = await dio.post(
      ApiConstants.login,
      data: request.toJson(),
    );

    return LoginResponse.fromJson(response.data);
  }

  Future<void> register(RegisterRequest request) async {
    await dio.post(
      ApiConstants.register,
      data: request.toJson(),
    );
  }

  Future<void> verifyEmail(VerifyEmailRequest request) async {
    await dio.post(
      ApiConstants.verifyEmail,
      data: request.toJson(),
    );
  }

  Future<void> resendOtp(ResendOtpRequest request) async {
    await dio.post(
      ApiConstants.resendOtp,
      data: request.toJson(),
    );
  }
}