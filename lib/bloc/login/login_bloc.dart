import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:help_isko/bloc/login/login_event.dart';
import 'package:help_isko/bloc/login/login_state.dart';
import 'package:help_isko/services/api_services.dart';
import 'package:help_isko/services/storage.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState>{
  final ApiServices apiServices;

  LoginBloc({required this.apiServices}) : super(LoginInitial()){
    on<LoginButtonPressed>(_onLoginButtonPressed);
  }

  void _onLoginButtonPressed(LoginButtonPressed event, Emitter<LoginState> emit) async {
    emit(LoginLoading());
    try {
      await Future.delayed(const Duration(seconds: 2));
      final response = await apiServices.login(event.email, event.password);

      final statusCode = response['statusCode'];
      final responseData = response['data'];

      if (statusCode == 200) {
        final String token = responseData['token'];
        final int userId = responseData['user']['id'];
        final String userName = responseData['user']['name'];
        final String userEmail = responseData['user']['email'];
        final String userPicture = responseData['user']['profile'] ?? '';
        final String userNumber = responseData['user']['phone_number'] ?? '';
        final String userAddress = responseData['user']['address'] ?? '';
        Storage.saveUserData(
          token: token,
          userId: userId,
          name: userName,
          email: userEmail,
          profilePicture: userPicture,
          number: userNumber,
          address: userAddress,
        );
        emit(LoginSuccess());
      } else if (statusCode == 500) {
        emit(LoginFailure(error: 'User not found'));
      } else if(statusCode == 401){
        emit(LoginFailure(error: 'Email and password does not match with our record'));
      } else {
        emit(LoginFailure(error: 'An unknown error occurred'));
      }

    } catch (error) {
      emit(LoginFailure(error: error.toString()));
    }
  }
}