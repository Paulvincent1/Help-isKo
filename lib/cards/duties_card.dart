import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DutiesCard extends StatelessWidget {
  final String name;
  final String description;
  final String date;
  final String building;
  final String time;
  final String status;

  const DutiesCard({
    super.key,
    required this.name,
    required this.description,
    required this.date,
    required this.building,
    required this.time,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      padding: const EdgeInsets.all(10),
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
          ),
        ],
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Row(
            children: [
              const CircleAvatar(
                backgroundColor: Color(0x80B9D5C4),
                radius: 35,
                child: ImageIcon(
                  AssetImage('images/profile_clicked.png'),
                  size: 35,
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: GoogleFonts.nunito(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF3B3B3B)
                      ),
                    ),
                    Text(
                      description,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.nunito(
                        fontSize: 10,
                        color: const Color(0xCC3B3B3B)
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          'Date: $date',
                          style: GoogleFonts.nunito(
                            fontSize: 10,
                            color: const Color(0xCC3B3B3B)
                          ),
                        ),
                        const Spacer(),
                        Text(
                          building,
                          style: GoogleFonts.nunito(
                            fontSize: 10,
                            color: const Color(0xCC3B3B3B)
                          ),
                        ),
                        Text(
                          ' : $time',
                          style: GoogleFonts.nunito(
                            fontSize: 10,
                            color: const Color(0xCC3B3B3B)
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          Positioned(
            top: -8,
            right: -8,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 12),
              decoration: const BoxDecoration(
                color: Color(0xFF6BB577),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(5),
                  topRight: Radius.circular(18),
                  bottomLeft: Radius.circular(18),
                  bottomRight: Radius.circular(5)
                ),
              ),
              child: Center(
                child: Text(
                  status,
                  style: GoogleFonts.nunito(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFFFCFCFC)
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}