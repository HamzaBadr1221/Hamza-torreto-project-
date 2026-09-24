import '../repositories/onboarding_repository.dart';

class GetIsOpen {
  final OnboardingRepository repository;

  GetIsOpen(this.repository);

  bool call() {
    return repository.getIsOpen();
  }
}