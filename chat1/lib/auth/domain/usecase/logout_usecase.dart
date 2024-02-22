import 'package:chat1/auth/domain/repositories/auth_repo.dart';

class LogoutUsecase {
  final LoginRepository repository;
  LogoutUsecase({required this.repository});

  Future<void> call()async{
    return repository.logout();
  }
}