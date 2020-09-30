import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:registration_bloc/blocs/registration_bloc/registration_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(BlocProvider(
    create: (context) => RegistrationBloc(RegistrationTestState()),
    child: MyApp(),
  ),);
}

