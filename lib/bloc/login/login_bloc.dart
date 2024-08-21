import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:help_isko/bloc/login/login_event.dart';
import 'package:help_isko/bloc/login/login_state.dart';
import 'package:help_isko/services/api_services.dart';
import 'package:help_isko/services/storage.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()) {
    on<LoginButtonPressed>(_onLoginButtonPressed);
    on<LoginAnimationGetStartedEvent>(loginAnimationGetStartedEvent);
    on<LoginGetStartedNavigationEvent>(loginGetStartedNavigationEvent);
    on<LoginSelectedProfessorRoleEvent>(loginSelectedProfessorRoleEvent);
    on<LoginSelectedStudentRoleEvent>(loginSelectedStudentRoleEvent);
    on<LoginGoBackRoleEvent>(loginGoBackRoleEvent);
  }

  void _onLoginButtonPressed(
      LoginButtonPressed event, Emitter<LoginState> emit) async {
    emit(LoginLoading());

    if (event.role == 'Student') {
      try {
        final response =
            await ApiServices.loginStud(event.email, event.password);
        if (response['message'] == 'Log in failed') {
          print('failed');
          emit(LoginFailure(error: 'Login Failed'));
        } else {
          print('yowwww');
          print(response['token']);

          Storage.saveUserData(
            token: response['token'],
            name: response['name'],
            userId: response['user']['user_id'],
            student_number: response['user']['student_number'],
            college: response['user']['college'],
            course: response['user']['course'],
            department: response['user']['department'],
            semester: response['user']['semester'],
            learning_modality: response['user']['learning_modality'],
            birthday: response['user']['birthday'],
            contact_number: response['user']['contact_number'],
            father_name: response['user']['father_name'],
            father_contact_number: response['user']['father_contact_number'],
            mother_name: response['user']['mother_name'],
            mother_contact_number: response['user']['mother_contact_number'],
            current_address: response['user']['current_address'],
            current_province: response['user']['current_province'],
            current_country: response['user']['current_country'],
            current_city: response['user']['current_city'],
            permanent_address: response['user']['permanent_address'],
            permanent_province: response['user']['permanent_province'],
            permanent_country: response['user']['permanent_country'],
            permanent_city: response['user']['permanent_city'],
            emergency_person_name: response['user']['emergency_person_name'],
            emergency_address: response['user']['emergency_address'],
            relation: response['user']['relation'],
            emergency_contact_number: response['user']
                ['emergency_contact_number'],
            profile_img: response['user']['profile_img'],
          );
          var val = await Storage.getField("profile_img");
          print(val);

          emit(LoginSuccessNavigationState());
        }
      } catch (error) {
        emit(LoginFailure(error: error.toString()));
      }
    }
    //todo
    if (event.role == 'Professor') {}
  }

  FutureOr<void> loginGetStartedNavigationEvent(
      LoginGetStartedNavigationEvent event, Emitter<LoginState> emit) {
    emit(LoginGetStartedNavigationState());
  }

  FutureOr<void> loginAnimationGetStartedEvent(
      LoginAnimationGetStartedEvent event, Emitter<LoginState> emit) async {
    emit(LoginAnimationGetStartedInProgressState());
    await Future.delayed(const Duration(seconds: 3));
    emit(LoginAnimationGetStartedCompleteState());
  }

  FutureOr<void> loginSelectedProfessorRoleEvent(
      LoginSelectedProfessorRoleEvent event, Emitter<LoginState> emit) {
    emit(LoginSelectedProfessorRoleState());
  }

  FutureOr<void> loginSelectedStudentRoleEvent(
      LoginSelectedStudentRoleEvent event, Emitter<LoginState> emit) {
    emit(LoginSelectedStudentRoleState());
  }

  FutureOr<void> loginGoBackRoleEvent(
      LoginGoBackRoleEvent event, Emitter<LoginState> emit) {
    emit(LoginGoBackRoleState());
  }
}
