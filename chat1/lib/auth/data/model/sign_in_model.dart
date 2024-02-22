import 'package:chat1/auth/domain/entites/user_entity.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class LoginModel extends UserEntity {
  LoginModel({
    String? email,
  
  }) : super(
          email: email,
          
        );

  factory LoginModel.fromsnapshoot(DocumentSnapshot snapshot) {
    var snapshotMap = snapshot.data() as Map<String, dynamic>;

    return LoginModel(
      email: snapshotMap['email'],

    );

}

Map<String, dynamic> toDocument(){
  return{
    "email": email,
  };
}
}
