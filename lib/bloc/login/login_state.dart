abstract class LoginState {}

class LoginActionState extends LoginState {}

class LoginInitial extends LoginState {}

class LoginLoading extends LoginState {}

class LoginSuccess extends LoginState {}

class LoginFailure extends LoginState {
  final String error;

  LoginFailure({required this.error});
}

class LoginSuccessNavigationState extends LoginActionState {}

class LoginAnimationGetStartedInProgressState extends LoginState {}

class LoginAnimationGetStartedCompleteState extends LoginState {}

class LoginGetStartedNavigationState extends LoginActionState {}

class LoginSelectedProfessorRoleState extends LoginState {}

class LoginSelectedStudentRoleState extends LoginState {}

class LoginGoBackRoleState extends LoginState {}
