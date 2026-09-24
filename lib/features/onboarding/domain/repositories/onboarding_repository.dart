abstract class OnboardingRepository {
  bool getIsOpen();

  Future<void> saveIsOpen();

  Future<void> clearIsOpen();
}