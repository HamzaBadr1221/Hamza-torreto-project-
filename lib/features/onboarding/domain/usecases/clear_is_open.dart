import '../repositories/onboarding_repository.dart';

class ClearIsOpen {
  final OnboardingRepository repository;

  ClearIsOpen(this.repository);

  Future<void> call() async {
    await repository.clearIsOpen();
  }
}