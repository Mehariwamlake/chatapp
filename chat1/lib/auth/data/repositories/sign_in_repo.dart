import 'package:chat1/auth/data/data_source/remot_data.dart';
import 'package:chat1/auth/domain/entites/user_entity.dart';
import 'package:chat1/auth/domain/repositories/auth_repo.dart';

class LoginRepositoryImpl implements LoginRepository {
  final LoginRemoteDataSource remoteDataSource;

  LoginRepositoryImpl({
    required this.remoteDataSource,
  });

  @override
  Future<void> signIn(UserEntity user) async =>
    remoteDataSource.signIn(user);
    
      @override
      Future<void> logout() async =>
        remoteDataSource.logout();
      



}