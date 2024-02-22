import 'package:chat1/bloc/auth_bloc/auth_bloc.dart';
import 'package:chat1/bloc/sign_in_bloc/sign_in_bloc.dart';
import 'package:chat1/screens/auth/welcome.dart';
import 'package:chat1/screens/home/home_Screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyAppView extends StatelessWidget {
  const MyAppView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'firebase auth',
      theme: ThemeData(
        colorScheme: const ColorScheme.light(
            background: Colors.white,
            onBackground: Colors.black,
            primary: Color.fromRGBO(206, 147, 216, 1),
            onPrimary: Colors.black,
            secondary: Color.fromRGBO(244, 143, 177, 1),
            onSecondary: Colors.white,
            tertiary: Color.fromRGBO(255, 204, 128, 1),
            error: Colors.red,
            outline: Color(0xFF424242)),
      ),
      home: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          if(state.status == AuthStatus.authenticated){
            return BlocProvider(
              create: (context) => SignInBloc(
                userRepository: context.read<AuthBloc>().userRepository
              ),
              child: const HomeScreen(),
            );
          }else {
            return const WelcomeScreen();
          }
        },
      ),
    );
  }
}
