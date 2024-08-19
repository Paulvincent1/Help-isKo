import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StudAddressCard extends StatelessWidget {
  const StudAddressCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(vertical: 10),
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Current Address',
              style: GoogleFonts.nunito(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: const Color(0xFF6BB577)
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Text(
                  'Address',
                  style: GoogleFonts.nunito(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF3B3B3B)
                  ),
                ),
                const Spacer(),
                Text(
                  'Country',
                  style: GoogleFonts.nunito(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF3B3B3B)
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  'Dagupan City',
                  style: GoogleFonts.nunito(
                    fontSize: 12,
                    color: const Color(0xCC3B3B3B)
                  ),
                ),
                const Spacer(),
                Text(
                  'Philippines',
                  style: GoogleFonts.nunito(
                    fontSize: 12,
                    color: const Color(0xCC3B3B3B)
                  ),
                )
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Text(
                  'Province',
                  style: GoogleFonts.nunito(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF3B3B3B)
                  ),
                ),
                const Spacer(),
                Text(
                  'City',
                  style: GoogleFonts.nunito(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF3B3B3B)
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  'Pangasinan',
                  style: GoogleFonts.nunito(
                    fontSize: 12,
                    color: const Color(0xCC3B3B3B)
                  ),
                ),
                const Spacer(),
                Text(
                  'Dagupan City',
                  style: GoogleFonts.nunito(
                    fontSize: 12,
                    color: const Color(0xCC3B3B3B)
                  ),
                )
              ],
            ),
            const SizedBox(height: 25),
            Text(
              'Permanent Address',
              style: GoogleFonts.nunito(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: const Color(0xFF6BB577)
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Text(
                  'Address',
                  style: GoogleFonts.nunito(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF3B3B3B)
                  ),
                ),
                const Spacer(),
                Text(
                  'Country',
                  style: GoogleFonts.nunito(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF3B3B3B)
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  'Dagupan City',
                  style: GoogleFonts.nunito(
                    fontSize: 12,
                    color: const Color(0xCC3B3B3B)
                  ),
                ),
                const Spacer(),
                Text(
                  'Philippines',
                  style: GoogleFonts.nunito(
                    fontSize: 12,
                    color: const Color(0xCC3B3B3B)
                  ),
                )
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Text(
                  'Province',
                  style: GoogleFonts.nunito(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF3B3B3B)
                  ),
                ),
                const Spacer(),
                Text(
                  'City',
                  style: GoogleFonts.nunito(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF3B3B3B)
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  'Pangasinan',
                  style: GoogleFonts.nunito(
                    fontSize: 12,
                    color: const Color(0xCC3B3B3B)
                  ),
                ),
                const Spacer(),
                Text(
                  'Dagupan City',
                  style: GoogleFonts.nunito(
                    fontSize: 12,
                    color: const Color(0xCC3B3B3B)
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}