import 'package:flutter/material.dart';
import 'package:help_isko/bloc/login/login_bloc.dart';
import 'package:help_isko/bloc/login/login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:help_isko/screens/wrapper.dart';
import 'package:help_isko/components/select_role.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  final idNumberController = TextEditingController();
  final passwordController = TextEditingController();
  String? selectedRole;
  bool isTextSelected = false;



  @override
  void dispose() {
    idNumberController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  bool handleBackPressed(){
    if(isTextSelected || selectedRole != null){
      setState(() {
        isTextSelected = false;
        selectedRole = null;
      });
      return false;
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocConsumer<LoginBloc, LoginState>(
          listenWhen: (previous, current) => current is LoginActionState,
          listener: (context, state) {
            // TODO: implement listener
            Navigator.push(
                context,
                PageRouteBuilder(
                    transitionDuration: const Duration(milliseconds: 900),
                    pageBuilder: (context, animation, secondaryAnimation) =>
                        Wrapper(selectedRole: selectedRole!),
                    transitionsBuilder:
                        (context, animation, secondaryAnimation, child) {
                      const begin = Offset(1, 0);
                      const end = Offset.zero;
                      const curve = Curves.easeInOut;
                      var tween = Tween(begin: begin, end: end)
                          .chain(CurveTween(curve: curve));
                      var offsetAnimation = animation.drive(tween);
                      return SlideTransition(
                        position: offsetAnimation,
                        child: child,
                      );
                    }));
          },
          buildWhen: (previous, current) => current is! LoginActionState,
          builder: (context, state) {
            switch (state.runtimeType) {
              case LoginSelectedProfessorRoleState:
                isTextSelected = true;
                selectedRole = 'Student';
                return SelectRole(
                    selectedRole: selectedRole, isTextSelected: isTextSelected);

              case LoginSelectedStudentRoleState:
                isTextSelected = true;
                selectedRole = 'Professor';
                return SelectRole(
                    selectedRole: selectedRole, isTextSelected: isTextSelected);
              case LoginGoBackRoleState:
                isTextSelected = false;
                selectedRole = null;
                return SelectRole(
                    selectedRole: selectedRole, isTextSelected: isTextSelected);
              default:
                return SelectRole(
                    selectedRole: selectedRole, isTextSelected: isTextSelected);
            }
          },
        ),
      ),
    );
  }
}
