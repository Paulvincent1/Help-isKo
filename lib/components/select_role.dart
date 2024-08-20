import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:help_isko/bloc/login/login_bloc.dart';
import 'package:help_isko/bloc/login/login_event.dart';
import 'package:help_isko/components/my_button.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:help_isko/components/my_form.dart';

// ignore: must_be_immutable
class SelectRole extends StatelessWidget {
  final emailAddressController = TextEditingController();
  final passwordController = TextEditingController();
  String? selectedRole;
  bool isTextSelected = false;

  SelectRole({
    super.key, 
    required this.selectedRole, 
    required this.isTextSelected
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 900),
      color: isTextSelected
          ? const Color(0xFFA3D9A5)
          : Theme.of(context).scaffoldBackgroundColor,
      child: Stack(
        children: [
          if (isTextSelected)
            Positioned(
              top: 10,
              left: 0,
              child: IconButton(
                icon: const Icon(Icons.arrow_back_ios_new_rounded),
                onPressed: () {
                  context.read<LoginBloc>().add(LoginGoBackRoleEvent());
                },
              ),
            ),
          AnimatedPositioned(
              duration: const Duration(milliseconds: 900),
              top: isTextSelected ? 60 : MediaQuery.of(context).size.height / 5,
              left: 0,
              right: 0,
              child: Column(
                children: [
                  Image.asset(
                    'images/upang_logo.png',
                    width: 200,
                  ),
                  AnimatedOpacity(
                    opacity: isTextSelected ? 0 : 1,
                    duration: const Duration(milliseconds: 900),
                    child: Text(
                      'University\nof\nPangasinan',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.abhayaLibre(
                          fontSize: 30, color: const Color(0xFF3B3B3B)),
                    ),
                  )
                ],
              )),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 900),
            top: isTextSelected
                ? 300
                : MediaQuery.of(context).size.height / 1.62,
            left: 0,
            right: 0,
            child: AnimatedContainer(
              height: isTextSelected
                  ? MediaQuery.of(context).size.height - 150
                  : MediaQuery.of(context).size.height / 1.5,
              duration: const Duration(milliseconds: 900),
              decoration: BoxDecoration(
                  color: isTextSelected
                      ? Theme.of(context).scaffoldBackgroundColor
                      : const Color(0xFFA3D9A5),
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50)),
                  border: Border.all(color: const Color(0x303B3B3B)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.09),
                        offset: const Offset(0, -10),
                        blurRadius: 10,
                        spreadRadius: 2)
                  ]),
              child: Padding(
                padding: const EdgeInsets.only(top: 50, left: 25, right: 25),
                child: AnimatedSwitcher(
                  duration: const Duration(seconds: 1),
                  child: isTextSelected
                      ?

                      // selected

                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          key: const ValueKey('formSection'),
                          children: [
                            Text(
                              selectedRole == 'Professor'
                                  ? 'Professor'
                                  : 'Student',
                              style: GoogleFonts.nunito(
                                fontSize: 40,
                                color: const Color(0xFF3B3B3B),
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            const SizedBox(height: 25),
                            MyForm(
                              controller: emailAddressController,
                              hintText: 'ID Number',
                              obscureText: false,
                              icon: Icons.person,
                            ),
                            const SizedBox(height: 20),
                            MyForm(
                              controller: passwordController,
                              hintText: 'Password',
                              obscureText: true,
                              icon: Icons.lock,
                            ),
                            const SizedBox(height: 10),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                'Forgot Password?',
                                style: GoogleFonts.nunito(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                  color: const Color(0xFF3B3B3B),
                                ),
                              ),
                            ),
                            const SizedBox(height: 15),
                            Align(
                              child: MyButton(
                                onTap: () {
                                  context.read<LoginBloc>().add(
                                      LoginButtonPressed(
                                          email: emailAddressController.text,
                                          password: passwordController.text,
                                          role: selectedRole!));
                                },
                                buttonText: 'Login',
                              ),
                            ),
                          ],
                        )
                      :

                      // not selected yet

                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Welcome',
                              style: GoogleFonts.nunito(
                                fontSize: 40,
                                color: const Color(0xFF3B3B3B),
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            Text(
                              'Track duties, grab opportunities, and stay organized. Simplify your journey with the Scholarship App. Join the Scholarship App today!',
                              style: GoogleFonts.nunito(
                                fontSize: 15,
                                color: const Color(0xFF3B3B3B),
                              ),
                            ),
                            const SizedBox(height: 25),
                            Row(
                              children: [
                                Expanded(
                                  child: MyButton(
                                    onTap: () {
                                      context.read<LoginBloc>().add(
                                          LoginSelectedProfessorRoleEvent());
                                    },
                                    buttonText: 'Professor',
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Expanded(
                                  child: MyButton(
                                    onTap: () {
                                      context
                                          .read<LoginBloc>()
                                          .add(LoginSelectedStudentRoleEvent());
                                    },
                                    buttonText: 'Student',
                                    color: const Color(0xFFF4F4F4),
                                    textColor: const Color(0xFF3B3B3B),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
