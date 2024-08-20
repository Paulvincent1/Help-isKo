import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnnouncementCard extends StatelessWidget {
  final String title;
  final String description;
  final String date;
  final String name;

  const AnnouncementCard({
    super.key,
    required this.title,
    required this.description,
    required this.date,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0xFFA3D9A5),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            offset: const Offset(0.0, 10.0),
            blurRadius: 10.0,
            spreadRadius: -6.0
          )
        ]
      ),
      child: Row(
        children: [
          Image.asset(
            'images/upang_logo.png',
            height: 100,
            width: 100,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Text(
                        title,
                        style: GoogleFonts.nunito(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFF3B3B3B)
                        ),
                      ),
                      const Spacer(),
                      Text(
                        date,
                        style: GoogleFonts.nunito(
                          fontSize: 10,
                          color: const Color(0xCC3B3B3B),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 5),
                  Text(
                    description,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.nunito(
                      fontSize: 10,
                      color: const Color(0xCC3B3B3B)
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    'Posted by: $name',
                    style: GoogleFonts.nunito(
                      fontSize: 10,
                      color: const Color(0xCC3B3B3B)
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}