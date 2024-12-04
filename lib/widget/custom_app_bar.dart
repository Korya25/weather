import 'package:flutter/material.dart';
import 'package:weather/constant/style.dart';
import 'package:weather/widget/search_icon.dart';
import 'package:weather/widget/toggele_theme.dart';

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
          style: AppTextStyle.appBartitle,
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
