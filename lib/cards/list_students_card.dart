import 'package:flutter/material.dart';

class ListStudentsCard extends StatelessWidget {
  final String name;
  final String course;
  final String ratings;
  final String profile;
  final String onGoingDuty;
  final String pendingDuty;

  const ListStudentsCard({
    super.key,
    required this.name,
    required this.course,
    required this.ratings,
    required this.profile,
    required this.onGoingDuty,
    required this.pendingDuty
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}