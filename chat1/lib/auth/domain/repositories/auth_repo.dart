import 'package:chat1/auth/domain/entites/user_entity.dart';

abstract class LoginRepository {
  Future<void> signIn(UserEntity user);
  Future<void>logout();
}