import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:help_isko/components/my_app_bar.dart';
import 'package:ionicons/ionicons.dart';

class ProfRequestDutiesPage extends StatefulWidget {
  const ProfRequestDutiesPage({super.key});

  @override
  State<ProfRequestDutiesPage> createState() => _ProfRequestDutiesPageState();
}

class _ProfRequestDutiesPageState extends State<ProfRequestDutiesPage> {
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
                  selectedRole: 'Professor',
                )
              ]),
            ),
            SliverLayoutBuilder(
              builder: (BuildContext context, constraints){
                final scrolled = constraints.scrollOffset > 0;
                return SliverAppBar(
                  automaticallyImplyLeading: false,
                  pinned: true,
                  expandedHeight: 120,
                  collapsedHeight: 65,
                  flexibleSpace: Container(
                    decoration: BoxDecoration(
                      // color: Colors.green,
                      color: Theme.of(context).scaffoldBackgroundColor,
                      boxShadow: scrolled ? [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          offset: const Offset(0.0, 10.0),
                          blurRadius: 10.0,
                          spreadRadius: -6.0
                        )
                      ] : []
                    ),
                    child: Stack(
                      children: [
                        AnimatedPositioned(
                          duration: const Duration(milliseconds: 300),
                          top: scrolled ? 0 : 25,
                          left: 15,
                          right: scrolled ? 0 : 15,
                          child: Row(
                            children: [
                              Expanded(
                                child: AnimatedOpacity(
                                  opacity: scrolled ? 0 : 1,
                                  duration: const Duration(milliseconds: 300),
                                  child: Container(
                                    height: 50,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20)
                                    ),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: const Color(0x808CC9A6),
                                        hintText: 'Search ...',
                                        hintStyle: const TextStyle(
                                          color: Color(0x803B3B3B)
                                        ),
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(20),
                                          borderSide: BorderSide.none
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(20),
                                          borderSide: BorderSide.none
                                        ),
                                        // suffixIcon: hasText ? 
                                        // GestureDetector(
                                        //   onTap: (){
                                        //     controller.clear();
                                        //     widget.onSearch('');
                                        //   },
                                        //   child: const Icon(
                                        //     Icons.close,
                                        //     color: Color(0xFF3B3B3B),
                                        //   ),
                                        // ): null
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 10),
                              Stack(
                                children: [
                                  AnimatedOpacity(
                                    duration: const Duration(milliseconds: 500),
                                    opacity: scrolled ? 0 : 1,
                                    child: Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        color: const Color(0x808CC9A6),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                    ),
                                  ),
                                  AnimatedPositioned(
                                    top: scrolled ? 15 : 0,
                                    bottom: 0,
                                    left: 0,
                                    right: scrolled ? -5 : 0,
                                    duration: const Duration(milliseconds: 300),
                                    child: const Icon(
                                      Ionicons.search
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        AnimatedPositioned(
                          duration: const Duration(milliseconds: 300),
                          top: scrolled ? 18 : 95,
                          left: 20,
                          right: 15,
                          child: AnimatedDefaultTextStyle(
                            style: GoogleFonts.nunito(
                              fontSize: scrolled ? 20 : 16,
                              fontWeight: FontWeight.bold,
                              color: const Color(0xFF3B3B3B)
                            ),
                            duration: const Duration(milliseconds: 300),
                            child: const Text('Request for Duties'),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
            SliverToBoxAdapter(
              child: Container(
                height: 500,
                decoration: BoxDecoration(
                  color: Colors.black
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}