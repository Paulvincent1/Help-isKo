abstract class LoginEvent {}

class LoginButtonPressed extends LoginEvent {
  final String email;
  final String password;
  final String role;

  LoginButtonPressed(
      {required this.email, required this.password, required this.role});
}

class LoginAnimationGetStartedEvent extends LoginEvent {}

class LoginGetStartedNavigationEvent extends LoginEvent {}

class LoginSelectedProfessorRoleEvent extends LoginEvent {}

class LoginSelectedStudentRoleEvent extends LoginEvent {}

class LoginGoBackRoleEvent extends LoginEvent {}
