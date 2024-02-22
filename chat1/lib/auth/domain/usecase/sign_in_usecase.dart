import 'package:chat1/auth/domain/entites/user_entity.dart';
import 'package:chat1/auth/domain/repositories/auth_repo.dart';


class LoginUseCase  {
  final LoginRepository repository;

  LoginUseCase({required this.repository});

  Future<void> call(UserEntity user) {
    return repository.signIn(user);
  }
}

