import '../../data/models/register_request.dart';
import '../repositories/auth_repository.dart';

class Register {
  final AuthRepository repository;

  Register(this.repository);

  Future<void> call(RegisterRequest request) {
    return repository.register(request);
  }
}