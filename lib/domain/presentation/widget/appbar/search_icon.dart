import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:weather/domain/presentation/screen/search_screen.dart';

class SearchIcon extends StatelessWidget {
  const SearchIcon({
    super.key,
    this.sizeIcon = 20,
  });
  final double sizeIcon;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.pushNamed(context, SearchScreen.id);
      },
      icon: Icon(
        FontAwesomeIcons.searchengin,
        size: sizeIcon,
      ),
    );
  }
}
