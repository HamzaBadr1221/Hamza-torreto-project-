import '../../domain/repositories/onboarding_repository.dart';
import '../../data/datasouces/onboarding_local_data_source.dart';

class OnboardingRepositoryImpl implements OnboardingRepository {
  final OnboardingLocalDataSource localDataSource;

  OnboardingRepositoryImpl(this.localDataSource);

  @override
  bool getIsOpen() {
    return localDataSource.getIsOpen();
  }

  @override
  Future<void> saveIsOpen() async {
    await localDataSource.saveIsOpen();
  }

  @override
  Future<void> clearIsOpen() async {
    await localDataSource.clearIsOpen();
  }
}