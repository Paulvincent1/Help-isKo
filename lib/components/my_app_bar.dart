import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:help_isko/components/my_icon_button_app_bar.dart';

class MyAppBar extends StatelessWidget {
  final String name;

  const MyAppBar({
    super.key,
    required this.name
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
      child: Row(
        children: [
          const CircleAvatar(
            backgroundColor: Color(0x80A3D9A5),
            radius: 25,
            child: ImageIcon(
              AssetImage('images/profile_clicked.png'),
            ),
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Welcome',
                style: GoogleFonts.nunito(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: const Color(0x803B3B3B),
                ),
              ),
              Text(
                name,
                style: GoogleFonts.nunito(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF3B3B3B),
                ),
              ),
            ],
          ),
          const Spacer(),
          const MyIconButtonAppBar()
        ],
      ),
    );
  }
}