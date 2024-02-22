import 'package:chat1/auth/domain/entites/user_entity.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class LoginRemoteDataSource {
  Future<void> signIn(UserEntity user);
  Future<void> logout();
}

class LoginRemoteDataSourceImpl implements LoginRemoteDataSource {
  final FirebaseFirestore firestore;
  final FirebaseAuth auth;

  LoginRemoteDataSourceImpl({
    required this.firestore,
    required this.auth,
  });

  @override
  Future<void> signIn(UserEntity user) async {
    await auth.signInWithEmailAndPassword(
        email: user.email!, password: user.password!);
  }
  
  @override
  Future<void> logout() async{
    await auth.signOut();
  }
}
