import 'package:flutter/material.dart';
import 'package:help_isko/components/duty_hours.dart';
import 'package:help_isko/components/my_app_bar.dart';

class StudHomePage extends StatelessWidget {
  const StudHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverList(
              delegate: SliverChildListDelegate([
                const MyAppBar(
                  name: 'John Brandon',
                )
              ]),
            ),
            const SliverToBoxAdapter(
              child: DutyHours()
            ),
          ],
        )
      ),
    );
  }
}