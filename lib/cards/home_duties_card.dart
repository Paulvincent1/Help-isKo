import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeDutiesCard extends StatelessWidget {
  final String name;
  final String description;
  final String date;
  final String status;
  final Color color;

  const HomeDutiesCard({
    super.key,
    required this.name,
    required this.description,
    required this.date,
    required this.status,
    this.color = const Color(0xFFE5BA03)
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 128,
      padding: const EdgeInsets.all(2),
      margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      decoration: BoxDecoration(
        color: const Color(0xFFFCFCFC),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: const Color(0x303B3B3B)),
        // boxShadow: [
        //   BoxShadow(
        //     color: Colors.black.withOpacity(0.2),
        //     offset: const Offset(0.0, 10.0),
        //     blurRadius: 10.0,
        //     spreadRadius: -6.0
        //   ),
        // ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CircleAvatar(
                backgroundColor: Color(0x808CC9A6),
                radius: 25,
                child: ImageIcon(AssetImage('images/profile_clicked.png'), size: 30),
              ),
              const SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(5),
                        topRight: Radius.circular(18),
                        bottomLeft: Radius.circular(18),
                        bottomRight: Radius.circular(5)
                      ),
                      color: color
                    ),
                    child: Text(
                      status,
                      style: GoogleFonts.nunito(
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFFFCFCFC)
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    date,
                    style: GoogleFonts.nunito(
                      fontSize: 8,
                      color: const Color(0xCC3B3B3B)
                    ),
                  )
                ],
              )
            ],
          ),
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Column(
              children: [
                Text(
                  name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.nunito(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF3B3B3B)
                  ),
                ),
                Text(
                  description,
                  maxLines: 5,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.nunito(
                    fontSize: 8,
                    color: const Color(0xCC3B3B3B)
                  ),
                )
              ],
            ),
          )
        ],
      )
    );
  }
}