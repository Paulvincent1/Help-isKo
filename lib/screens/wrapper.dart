import 'package:flutter/material.dart';
import 'package:help_isko/screens/professors/prof_home_page.dart';
import 'package:help_isko/screens/students/stud_duties_page.dart';
import 'package:help_isko/screens/students/stud_home_page.dart';
import 'package:help_isko/screens/students/stud_profile_page.dart';

class Wrapper extends StatefulWidget {
  final String selectedRole;

  const Wrapper({super.key, required this.selectedRole});

  @override
  State<Wrapper> createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  int selectedIndex = 0;

  @override
  void dispose(){
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Stack(
          children: [
            IndexedStack(
              index: selectedIndex,
              children: widget.selectedRole == 'Professor' 
                ? const [
                  ProfHomePage(),
                ]
                : const [
                  StudHomePage(),
                  StudDutiesPage(),
                  StudProfilePage(),
                ]
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 25,
              child: Container(
                height: 80,
                margin: const EdgeInsets.symmetric(horizontal: 25),
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0x303B3B3B)),
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                        spreadRadius: 1,
                        blurRadius: 10,
                        offset: const Offset(0, 6)
                    )
                  ]
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: BottomNavigationBar(
                    selectedItemColor: const Color(0xFF8CC9A6),
                    unselectedItemColor: const Color(0xFF3B3B3B),
                    selectedLabelStyle: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                    items: [
                      BottomNavigationBarItem(
                        label: 'Home',
                        icon: selectedIndex == 0 ? const ImageIcon(AssetImage('images/home_clicked.png'), color: Color(0xFFA3D9A5)) : const ImageIcon(AssetImage('images/home.png'))
                      ),
                      BottomNavigationBarItem(
                        label: 'Duties',
                        icon: selectedIndex == 1 ? const ImageIcon(AssetImage('images/duties_clicked.png'), color: Color(0xFFA3D9A5)) : const ImageIcon(AssetImage('images/duties.png'))
                      ),
                      BottomNavigationBarItem(
                        label: 'Profile',
                        icon: selectedIndex == 2 ? const ImageIcon(AssetImage('images/profile_clicked.png'), color: Color(0xFFA3D9A5)) : const ImageIcon(AssetImage('images/profile.png'))
                      ),
                    ],
                    currentIndex: selectedIndex,
                    onTap: (int index){
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
