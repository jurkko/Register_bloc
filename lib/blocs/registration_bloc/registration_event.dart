part of 'registration_bloc.dart';

@immutable
abstract class RegistrationEvent extends Equatable {
  const RegistrationEvent();

  @override
  List<Object> get props => [];
}

class RegistrationEventInitial extends RegistrationEvent {
  const RegistrationEventInitial();
  @override
  List<Object> get props => [];
}



class RegistrationEmailChanged extends RegistrationEvent {
  const RegistrationEmailChanged(this.email);

  final String email;

  @override
  List<Object> get props => [email];
}

class RegistrationEmailChanged2 extends RegistrationEvent {
  const RegistrationEmailChanged2(this.email);

  final String email;

  @override
  List<Object> get props => [email];
}

class RegistrationPasswordChanged extends RegistrationEvent {
  const RegistrationPasswordChanged(this.password);

  final String password;

  @override
  List<Object> get props => [password];
}

class RegistrationSubmitted extends RegistrationEvent {
  const RegistrationSubmitted();
  @override
  List<Object> get props => [];
}

class RegistrationSubmittedPage extends RegistrationEvent {
  const RegistrationSubmittedPage();
  @override
  List<Object> get props => [];
}


class backToRegister extends RegistrationEvent {
  const backToRegister();
  @override
  List<Object> get props => [];
}
