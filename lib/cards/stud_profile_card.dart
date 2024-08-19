import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StudProfileCard extends StatelessWidget {
  const StudProfileCard({super.key});

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
              spreadRadius: -6.0,
            ),
          ],
        ),
        child: Column( // Removed the Expanded widget here
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Person Details',
              style: GoogleFonts.nunito(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: const Color(0xFF6BB577),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Text(
                  'Student Name',
                  style: GoogleFonts.nunito(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF3B3B3B),
                  ),
                ),
                const Spacer(),
                Text(
                  'Student ID Number',
                  style: GoogleFonts.nunito(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF3B3B3B),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  'Trisha Mariecher Viado',
                  style: GoogleFonts.nunito(
                    fontSize: 12,
                    color: const Color(0xCC3B3B3B),
                  ),
                ),
                const Spacer(),
                Text(
                  '01-2345-678910',
                  style: GoogleFonts.nunito(
                    fontSize: 12,
                    color: const Color(0xCC3B3B3B),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Course',
                      style: GoogleFonts.nunito(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF3B3B3B),
                      ),
                    ),
                    Text(
                      'Bachelor of Science\nInformation Technology',
                      style: GoogleFonts.nunito(
                        fontSize: 12,
                        color: const Color(0xCC3B3B3B),
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'College',
                      style: GoogleFonts.nunito(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF3B3B3B),
                      ),
                    ),
                    Text(
                      'CITE',
                      style: GoogleFonts.nunito(
                        fontSize: 12,
                        color: const Color(0xCC3B3B3B),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                const Spacer(),
                Text(
                  'Semester',
                  style: GoogleFonts.nunito(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF3B3B3B),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                const Spacer(),
                Text(
                  'Y3S1',
                  style: GoogleFonts.nunito(
                    fontSize: 12,
                    color: const Color(0xCC3B3B3B),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Text(
                  "Father's Name",
                  style: GoogleFonts.nunito(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF3B3B3B),
                  ),
                ),
                const Spacer(),
                Text(
                  "Mother's Name",
                  style: GoogleFonts.nunito(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF3B3B3B),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  'John Brandon Lambino',
                  style: GoogleFonts.nunito(
                    fontSize: 12,
                    color: const Color(0xCC3B3B3B),
                  ),
                ),
                const Spacer(),
                Text(
                  'John Brandon Lambino',
                  style: GoogleFonts.nunito(
                    fontSize: 12,
                    color: const Color(0xCC3B3B3B),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text(
              "Date of Birth",
              style: GoogleFonts.nunito(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: const Color(0xFF3B3B3B),
              ),
            ),
            Text(
              'January 1, 1111',
              style: GoogleFonts.nunito(
                fontSize: 12,
                color: const Color(0xCC3B3B3B),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
