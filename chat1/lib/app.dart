import 'package:chat1/app_view.dart';
import 'package:chat1/bloc/auth_bloc/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_repository/user_repository.dart';

class MainApp extends StatelessWidget {
  final UserRepository userRepository;
  const MainApp(this.userRepository, {super.key});

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider<AuthBloc>(
      create: (context) => AuthBloc(userRepository: userRepository),
      child: const MyAppView(),
    );
  }
}
