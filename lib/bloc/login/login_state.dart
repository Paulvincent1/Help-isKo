abstract class LoginState {}

class LoginActionState extends LoginState {}

class LoginInitial extends LoginState {}

class LoginLoading extends LoginState {}

class LoginSuccess extends LoginState {}

class LoginFailure extends LoginState {
  final String error;

  LoginFailure({required this.error});
}

class LoginGetStartedNavigationState extends LoginActionState {}
