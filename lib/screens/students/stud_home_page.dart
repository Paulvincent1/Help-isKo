import 'package:flutter/material.dart';

class StudHomePage extends StatelessWidget {
  const StudHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: Text(
            'Student Home Page'
          ),
        ),
      ),
    );
  }
}