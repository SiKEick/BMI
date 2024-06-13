import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';

class IconContent extends StatelessWidget {
  const IconContent({super.key, required this.gender});
  final String gender;

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Icon(
        gender == 'MALE' ? FontAwesomeIcons.mars : FontAwesomeIcons.venus,
        size: 80.0,
      ),
      const SizedBox(
        height: 15.0,
      ),
      Text(
        gender,
        style: kLabelStyle,
      )
    ]);
  }
}
