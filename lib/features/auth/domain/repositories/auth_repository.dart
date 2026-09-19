import '../../data/models/login_request.dart';
import '../../data/models/login_response.dart';
import '../../data/models/register_request.dart';
import '../../data/models/resend_otp_request.dart';
import '../../data/models/verify_email_request.dart';

abstract class AuthRepository {
  Future<LoginResponse> login(LoginRequest request);

  Future<void> register(RegisterRequest request);

  Future<void> verifyEmail(VerifyEmailRequest request);

  Future<void> resendOtp(ResendOtpRequest request);
}