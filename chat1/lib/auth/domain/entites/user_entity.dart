import 'package:equatable/equatable.dart';

class UserEntity extends Equatable {
  final String? email;
  final String? password;

  const UserEntity({
    this.email,
    this.password,
  });

  @override
  List<Object?> get props => [
        email,
        password,
      ];
}
