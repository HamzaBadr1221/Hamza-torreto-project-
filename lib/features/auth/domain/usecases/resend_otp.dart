import '../../data/models/resend_otp_request.dart';
import '../repositories/auth_repository.dart';

class ResendOtp {
  final AuthRepository repository;

  ResendOtp(this.repository);

  Future<void> call(ResendOtpRequest request) {
    return repository.resendOtp(request);
  }
}