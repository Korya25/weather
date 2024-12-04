import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather/domain/presentation/widget/appbar/search_icon.dart';
import 'package:weather/domain/presentation/widget/appbar/toggele_theme.dart';

class CutomAppBar extends StatelessWidget {
  const CutomAppBar({
    super.key,
    this.sizeIcon = 25,
  });
  final double sizeIcon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'weather',
          style: GoogleFonts.abel(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
            color: Colors.white,
          ),
        ),
        const Spacer(
          flex: 1,
        ),
        SearchIcon(
          sizeIcon: sizeIcon,
        ),
        TogglThemebuttton(
          sizeIcon: sizeIcon,
        ),
      ],
    );
  }
}
