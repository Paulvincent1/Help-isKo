import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:help_isko/cards/announcement_card.dart';
import 'package:help_isko/components/duty_hours.dart';
import 'package:help_isko/components/my_app_bar.dart';
import 'package:help_isko/models/announcement.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class StudHomePage extends StatefulWidget {
  const StudHomePage({super.key});

  @override
  State<StudHomePage> createState() => _StudHomePageState();
}

class _StudHomePageState extends State<StudHomePage> {
  late double percentage = 0.0;
  final PageController pageController = PageController();

  List<Announcement> announcement = [
    const Announcement(
      title: 'HK Scholarships',
      description: "Stay updated with the latest scholarship opportunities! Explore new scholarships, application deadlines, and essential details all in one place.",
      date: 'August 5, 2024',
      name: 'John Brandon Lambino'
    ),
    const Announcement(
      title: 'HK Scholarships',
      description: "Stay updated with the latest scholarship opportunities! Explore new scholarships, application deadlines, and essential details all in one place.",
      date: 'August 5, 2024',
      name: 'John Brandon Lambino'
    ),
    const Announcement(
      title: 'HK Scholarships',
      description: "Stay updated with the latest scholarship opportunities! Explore new scholarships, application deadlines, and essential details all in one place.",
      date: 'August 5, 2024',
      name: 'John Brandon Lambino'
    ),
    const Announcement(
      title: 'HK Scholarships',
      description: "Stay updated with the latest scholarship opportunities! Explore new scholarships, application deadlines, and essential details all in one place.",
      date: 'August 5, 2024',
      name: 'John Brandon Lambino'
    ),
    const Announcement(
      title: 'HK Scholarships',
      description: "Stay updated with the latest scholarship opportunities! Explore new scholarships, application deadlines, and essential details all in one place.",
      date: 'August 5, 2024',
      name: 'John Brandon Lambino'
    ),
    const Announcement(
      title: 'HK Scholarships',
      description: "Stay updated with the latest scholarship opportunities! Explore new scholarships, application deadlines, and essential details all in one place.",
      date: 'August 5, 2024',
      name: 'John Brandon Lambino'
    ),
  ];
  
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
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(top: 25, left: 25, right: 25),
                child: Text(
                  'Announcement',
                  style: GoogleFonts.nunito(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF3B3B3B),
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 160,
                child: Column(
                  children: [
                    Expanded(
                      child: PageView.builder(
                        controller: pageController,
                        itemBuilder: (context, index) {
                          final actualIndex = index % announcement.length;
                          return AnnouncementCard(
                            title: announcement[actualIndex].title,
                            description: announcement[actualIndex].description,
                            date: announcement[actualIndex].date,
                            name: announcement[actualIndex].name,
                          );
                        },
                      ),
                    ),
                    SmoothPageIndicator(
                      controller: pageController,
                      count: 5,
                      effect: const WormEffect(
                        activeDotColor: Color(0xFF3B3B3B),
                        dotColor: Color(0xCCD9D9D9),
                        dotHeight: 7,
                        dotWidth: 7,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        )
      ),
    );
  }
}