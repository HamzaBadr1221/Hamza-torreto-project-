import '../repositories/onboarding_repository.dart';

class SaveIsOpen {
  final OnboardingRepository repository;

  SaveIsOpen(this.repository);

  Future<void> call() async {
    await repository.saveIsOpen();
  }
}