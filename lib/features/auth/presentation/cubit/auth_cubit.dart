import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../data/models/login_request.dart';
import '../../data/models/register_request.dart';
import '../../data/models/resend_otp_request.dart';
import '../../data/models/verify_email_request.dart';

import '../../domain/usecases/login.dart';
import '../../domain/usecases/register.dart';
import '../../domain/usecases/resend_otp.dart';
import '../../domain/usecases/verify_email.dart';

import 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  final Login login;
  final Register register;
  final VerifyEmail verifyEmail;
  final ResendOtp resendOtp;
  final SharedPreferences sharedPreferences;

  AuthCubit({
    required this.login,
    required this.register,
    required this.verifyEmail,
    required this.resendOtp,
    required this.sharedPreferences,
  }) : super(const AuthState.initial());

  // ================= LOGIN =================

  Future<void> loginUser(LoginRequest request) async {
    emit(const AuthState.loading());

    try {
      final response = await login(request);

      // Save Access Token
      await sharedPreferences.setString(
        'accessToken',
        response.accessToken,
      );

      print('========== LOGIN SUCCESS ==========');
      print('TOKEN SAVED SUCCESSFULLY');
      print('===================================');

      emit(const AuthState.loginSuccess());
    } catch (e) {
      print('LOGIN ERROR: $e');

      emit(AuthState.error(e.toString()));
    }
  }

  // ================= REGISTER =================

  Future<void> registerUser(RegisterRequest request) async {
    emit(const AuthState.loading());

    try {
      await register(request);

      emit(const AuthState.registerSuccess());
    } on DioException catch (e) {
      print('========== DIO ERROR ==========');
      print('TYPE: ${e.type}');
      print('MESSAGE: ${e.message}');
      print('ERROR: ${e.error}');
      print('RESPONSE: ${e.response}');
      print('STATUS CODE: ${e.response?.statusCode}');
      print('RESPONSE DATA: ${e.response?.data}');
      print('REQUEST URL: ${e.requestOptions.uri}');
      print('REQUEST DATA: ${e.requestOptions.data}');
      print('================================');

      emit(
        AuthState.error(
          e.message ?? 'Registration failed',
        ),
      );
    } catch (e) {
      print('ERROR: $e');

      emit(AuthState.error(e.toString()));
    }
  }

  // ================= VERIFY EMAIL =================

  Future<void> verifyUserEmail(
      VerifyEmailRequest request,
      ) async {
    emit(const AuthState.loading());

    try {
      await verifyEmail(request);

      emit(const AuthState.verifyEmailSuccess());
    } catch (e) {
      emit(AuthState.error(e.toString()));
    }
  }

  // ================= RESEND OTP =================

  Future<void> resendUserOtp(
      ResendOtpRequest request,
      ) async {
    emit(const AuthState.loading());

    try {
      await resendOtp(request);

      emit(const AuthState.resendOtpSuccess());
    } catch (e) {
      emit(AuthState.error(e.toString()));
    }
  }
}