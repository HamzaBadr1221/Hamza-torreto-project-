import '../datasources/auth_remote_data_source.dart';
import '../models/login_request.dart';
import '../models/login_response.dart';
import '../models/register_request.dart';
import '../models/resend_otp_request.dart';
import '../models/verify_email_request.dart';
import '../../domain/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;

  AuthRepositoryImpl(this.remoteDataSource);

  @override
  Future<LoginResponse> login(LoginRequest request) {
    return remoteDataSource.login(request);
  }

  @override
  Future<void> register(RegisterRequest request) {
    return remoteDataSource.register(request);
  }

  @override
  Future<void> verifyEmail(VerifyEmailRequest request) {
    return remoteDataSource.verifyEmail(request);
  }

  @override
  Future<void> resendOtp(ResendOtpRequest request) {
    return remoteDataSource.resendOtp(request);
  }
}