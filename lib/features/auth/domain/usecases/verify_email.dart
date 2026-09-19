import '../../data/models/verify_email_request.dart';
import '../repositories/auth_repository.dart';

class VerifyEmail {
  final AuthRepository repository;

  VerifyEmail(this.repository);

  Future<void> call(VerifyEmailRequest request) {
    return repository.verifyEmail(request);
  }
}