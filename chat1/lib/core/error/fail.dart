import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  Failure([List properties = const <dynamic>[]]) : super();
  @override
  List<Object> get props => [];

}

class ServerFailure extends Failure {
}

class CacherFailure extends Failure {
  final String message;
  CacherFailure(this.message);
}

class NetworkFailure extends Failure {}

class ServerException implements Exception {
  
}