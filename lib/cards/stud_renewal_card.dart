import 'package:flutter/material.dart';

class StudRenewalCard extends StatelessWidget {
  const StudRenewalCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        padding: const EdgeInsets.all(25),
        decoration: BoxDecoration(
          color: const Color(0xFFFCFCFC),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: const Color(0x303B3B3B)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              offset: const Offset(0.0, 10.0),
              blurRadius: 10.0,
              spreadRadius: -6.0
            )
          ] 
        ),
      ),
    );
  }
}