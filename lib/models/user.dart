import 'package:equatable/equatable.dart';


class User extends Equatable {
  const User(this.id, this.username, this.password);

  final String id;
  final String username;
  final String password;

  @override
  List<Object> get props => [id];
}
