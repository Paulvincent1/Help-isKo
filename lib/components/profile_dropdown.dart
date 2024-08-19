import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:help_isko/cards/stud_address_card.dart';
import 'package:help_isko/cards/stud_contact_card.dart';
import 'package:help_isko/cards/stud_profile_card.dart';
import 'package:help_isko/cards/stud_renewal_card.dart';

class ProfileDropdown extends StatefulWidget {
  final IconData icon;
  final Color color;
  final String title;
  final String type;

  const ProfileDropdown({
    super.key,
    required this.icon,
    required this.color,
    required this.title,
    required this.type,
  });

  @override
  State<ProfileDropdown> createState() => _ProfileDropdownState();
}

class _ProfileDropdownState extends State<ProfileDropdown> with SingleTickerProviderStateMixin {
  bool _isDropDown = false;
  
  @override
  Widget build(BuildContext context) {
    Widget selectedCard;
    switch (widget.type) {
      case 'Profile':
        selectedCard = const StudProfileCard();
        break;
      case 'Contact':
        selectedCard = const StudContactCard();
        break;
      case 'Address':
        selectedCard = const StudAddressCard();
        break;
      case 'Renewal':
        selectedCard = const StudRenewalCard();
        break;
      default:
        selectedCard = const SizedBox.shrink();
        break;
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: (){
            setState(() {
              _isDropDown = !_isDropDown;
            });
          },
          child: Row(
            children: [
              Icon(
                widget.icon,
                color: widget.color,
              ),
              const SizedBox(width: 10),
              Text(
                widget.title,
                style: GoogleFonts.nunito(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              Icon(
                _isDropDown ? Icons.arrow_drop_up : Icons.arrow_drop_down,
                size: 50, 
                color: const Color(0xFF6BB577)
              )
            ],
          ),
        ),
        AnimatedContainer(
          duration: const Duration(milliseconds: 900),
          curve: Curves.easeInOut,
          height: _isDropDown ? 355.0 : 0.0, // Adjust height as needed
          child: ClipRect( // Ensures the child is clipped when height is animated
            child: Align(
              alignment: Alignment.topCenter,
              heightFactor: _isDropDown ? 1.0 : 0.0,
              child: selectedCard,
            ),
          ),
        ),
      ],
    );
  }
}