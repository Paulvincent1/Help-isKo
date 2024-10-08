import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:help_isko/bloc/login/login_bloc.dart';
import 'package:help_isko/bloc/login/login_event.dart';
import 'package:help_isko/bloc/login/login_state.dart';
import 'package:help_isko/screens/landing_page.dart';
import 'package:slide_to_act/slide_to_act.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  bool isAnimated = false;
  late AnimationController controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    _animation = CurvedAnimation(parent: controller, curve: Curves.easeInOut);
    controller.forward();

    context.read<LoginBloc>().add(LoginAnimationGetStartedEvent());
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocConsumer<LoginBloc, LoginState>(
          listenWhen: (previous, current) => current is LoginActionState,
          listener: (context, state) {
            Navigator.push(
                context,
                PageRouteBuilder(
                    transitionDuration: const Duration(milliseconds: 900),
                    pageBuilder: (context, animation, secondaryAnimation) =>
                        const LandingPage(),
                    transitionsBuilder:
                        (context, animation, secondaryAnimation, child) {
                      const begin = Offset(0, 1);
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
            return null;
          },
          buildWhen: (previous, current) => current is! LoginActionState,
          builder: (context, state) {
            switch (state.runtimeType) {
              case LoginAnimationGetStartedInProgressState:
                return AnimatedContainer(
                  duration: const Duration(milliseconds: 900),
                  color: isAnimated
                      ? Theme.of(context).scaffoldBackgroundColor
                      : const Color(0xFFA3D9A5),
                  child: Stack(
                    children: [
                      AnimatedPositioned(
                        duration: const Duration(milliseconds: 900),
                        curve: Curves.easeInOut,
                        top: isAnimated
                            ? 100
                            : MediaQuery.of(context).size.height / 2 - 150,
                        bottom: 0,
                        right: 0,
                        left: 0,
                        child: ScaleTransition(
                          scale: _animation,
                          child: Column(
                            children: [
                              Text(
                                'PHINMA EDUCATION',
                                style: GoogleFonts.abhayaLibre(
                                  fontSize: 30,
                                  color: const Color(0xFF3B3B3B),
                                ),
                              ),
                              Image.asset(
                                'images/phinma_logo.png',
                                height: 200,
                                width: 200,
                              ),
                              const SizedBox(height: 30),
                              AnimatedOpacity(
                                opacity: isAnimated ? 1 : 0,
                                duration: const Duration(milliseconds: 900),
                                child: Text(
                                  'HK Scholarships',
                                  style: GoogleFonts.abhayaLibre(
                                      fontSize: 30,
                                      color: const Color(0xFF3B3B3B)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      AnimatedPositioned(
                        duration: const Duration(milliseconds: 900),
                        curve: Curves.easeInOut,
                        bottom: isAnimated ? 25 : -100,
                        left: 15,
                        right: 15,
                        child: SlideAction(
                          outerColor: const Color(0xFFA3D9A5),
                          innerColor: const Color(0xFFFCFCFC),
                          text: 'Get Started',
                          textStyle: GoogleFonts.nunito(
                              color: const Color(0xFF3B3B3B),
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                          onSubmit: () {
                            context
                                .read<LoginBloc>()
                                .add(LoginGetStartedNavigationEvent());
                          },
                        ),
                      )
                    ],
                  ),
                );
              case LoginAnimationGetStartedCompleteState:
                isAnimated = true;
                return AnimatedContainer(
                  duration: const Duration(milliseconds: 900),
                  color: isAnimated
                      ? Theme.of(context).scaffoldBackgroundColor
                      : const Color(0xFFA3D9A5),
                  child: Stack(
                    children: [
                      AnimatedPositioned(
                        duration: const Duration(milliseconds: 900),
                        curve: Curves.easeInOut,
                        top: isAnimated
                            ? 100
                            : MediaQuery.of(context).size.height / 2 - 150,
                        bottom: 0,
                        right: 0,
                        left: 0,
                        child: ScaleTransition(
                          scale: _animation,
                          child: Column(
                            children: [
                              Text(
                                'PHINMA EDUCATION',
                                style: GoogleFonts.abhayaLibre(
                                  fontSize: 30,
                                  color: const Color(0xFF3B3B3B),
                                ),
                              ),
                              Image.asset(
                                'images/phinma_logo.png',
                                height: 200,
                                width: 200,
                              ),
                              const SizedBox(height: 30),
                              AnimatedOpacity(
                                opacity: isAnimated ? 1 : 0,
                                duration: const Duration(milliseconds: 900),
                                child: Text(
                                  'HK Scholarships',
                                  style: GoogleFonts.abhayaLibre(
                                      fontSize: 30,
                                      color: const Color(0xFF3B3B3B)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      AnimatedPositioned(
                        duration: const Duration(milliseconds: 900),
                        curve: Curves.easeInOut,
                        bottom: isAnimated ? 25 : -100,
                        left: 15,
                        right: 15,
                        child: SlideAction(
                          outerColor: const Color(0xFFA3D9A5),
                          innerColor: const Color(0xFFFCFCFC),
                          text: 'Get Started',
                          textStyle: GoogleFonts.nunito(
                              color: const Color(0xFF3B3B3B),
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                          onSubmit: () {
                            context
                                .read<LoginBloc>()
                                .add(LoginGetStartedNavigationEvent());
                          },
                        ),
                      )
                    ],
                  ),
                );
              default:
                return SizedBox();
            }
          },
        ),
      ),
    );
  }
}
