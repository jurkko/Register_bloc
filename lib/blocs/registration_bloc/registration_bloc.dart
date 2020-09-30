import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:registration_bloc/database/users.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import '../../models/user.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';
import 'package:registration_bloc/models/user.dart';

part 'registration_event.dart';

part 'registration_state.dart';

class RegistrationBloc extends Bloc<RegistrationEvent, RegistrationState> {
  RegistrationBloc(RegistrationTestState registrationTestState)
      : super(RegistrationInitialState());
  FirebaseAuth auth = FirebaseAuth.instance;

  String email;
  String password;

  @override
  Stream<RegistrationState> mapEventToState(
    RegistrationEvent event,
  ) async* {
    if (event is RegistrationEmailChanged) {
      email = event.email;
      print(event.email + 'bloc');
    } else if (event is RegistrationPasswordChanged) {
      print(event.password);
      password = event.password;
    } else if (event is RegistrationEmailChanged) {
      print(event.props.toString() + 'Test bloc');
      yield RegistrationTestState();
    } else if (event is RegistrationEmailChanged2) {
      print(event.props.toString() + 'Test bloc2');
      yield RegistrationTestState();
    }  else if (event is backToRegister) {

      yield RegistrationTestState();
    } else if (event is RegistrationSubmitted) {

      Future<FirebaseUser> user;
      try {
         FirebaseAuth.instance.signOut();
        print(user.toString()+' neki');
        bool registered = await registerUser(email, password);


        print(registered.toString());
        if(registered == true){
          yield RegistrationTestState2();
        } else yield RegistrationFailed();

      } catch (error) {
        String errorMessage;
        switch (error.code) {
          case "ERROR_INVALID_EMAIL":
            errorMessage = "Your email address appears to be malformed.";
            break;
          case "ERROR_WRONG_PASSWORD":
            errorMessage = "Your password is wrong.";
            break;
          case "ERROR_USER_NOT_FOUND":
            errorMessage = "User with this email doesn't exist.";
            break;
          case "ERROR_USER_DISABLED":
            errorMessage = "User with this email has been disabled.";
            break;
          case "ERROR_TOO_MANY_REQUESTS":
            errorMessage = "Too many requests. Try again later.";
            break;
          case "ERROR_OPERATION_NOT_ALLOWED":
            errorMessage = "Signing in with Email and Password is not enabled.";
            break;
          default:
            errorMessage = "An undefined Error happened.";
        }
      }
//      FirebaseAuth.instance.onAuthStateChanged.listen((currentUser) {
//        if (currentUser == null) {
//          print('ni');
//        } else {
//          print('je');
//           setAuthState();
//        }
//      });


    }
  }

  Future<bool> registerUser(email, password) async {
    try {
      print('neki');
      UserCredential user = await auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      return Future<bool>.value(true);
    } catch (e) {
      print(e.toString());
      return Future<bool>.value(false);
    }
  }


}
