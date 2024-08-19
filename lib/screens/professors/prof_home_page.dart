import 'package:flutter/material.dart';

class ProfHomePage extends StatelessWidget {
  const ProfHomePage({super.key});

  @override
  Widget build(BuildContext context) {
     return const Scaffold(
      body: SafeArea(
        child: Center(
          child: Text(
            'Professor Home Page'
          ),
        ),
      ),
    );
  }
}