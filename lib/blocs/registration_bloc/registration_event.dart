part of 'registration_bloc.dart';

@immutable
abstract class RegistrationEvent extends Equatable {
  const RegistrationEvent();

  @override
  List<Object> get props => [];
}

class RegistrationUsernameChanged extends RegistrationEvent {
  const RegistrationUsernameChanged(this.username);

  final String username;

  @override
  List<Object> get props => [username];
}

class RegistrationPasswordChanged extends RegistrationEvent {
  const RegistrationPasswordChanged(this.password);

  final String password;

  @override
  List<Object> get props => [password];
}

class RegistrationSubmitted extends RegistrationEvent {
  const RegistrationSubmitted();
}

class RegistrationTest extends RegistrationEvent {
  const RegistrationTest();
}
