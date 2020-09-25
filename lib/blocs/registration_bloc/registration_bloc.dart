import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';
import 'package:registration_bloc/models/user.dart';
import 'package:registration_bloc/trackingRepository.dart';

part 'registration_event.dart';

part 'registration_state.dart';

class RegistrationBloc extends Bloc<RegistrationEvent, RegistrationState> {
  RegistrationBloc(RegistrationTestState registrationTestState) : super(RegistrationInitialState());

  @override
  Stream<RegistrationState> mapEventToState(
    RegistrationEvent event,
  ) async* {
    if (event is RegistrationUsernameChanged) {
    } else if (event is RegistrationPasswordChanged) {
    } else if (event is RegistrationSubmitted) {}
    else if(event is RegistrationTest){
      print(event.props.toString()+'Test bloc');
      yield RegistrationTestState();
    }

  }
}
