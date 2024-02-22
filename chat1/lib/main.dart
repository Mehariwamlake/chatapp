import 'package:bloc/bloc.dart';
import 'package:chat1/app.dart';
import 'package:chat1/simple_bloc_observer.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:user_repository/user_repository.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "AIzaSyBqoWqSoIBjUM_kHh0sJmAyRCTYKrgjnEk",
      authDomain: "chat-a81c7.firebaseapp.com",
      projectId: "chat-a81c7",
      storageBucket: "chat-a81c7.appspot.com",
      messagingSenderId: "1023415038874",
      appId: "1:1023415038874:web:b43714bad3fc15a0784023",
      measurementId: "G-898FS20SSQ",
    ),
  );
  Bloc.observer = SimpleBlocObserver();
  runApp(MainApp(FirebaseUserRepo()));
}


