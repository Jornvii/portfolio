import 'package:flutter/material.dart';
import 'hover_icon.dart'; // Import HoverIcon widget
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ContactIcons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Padding(
      padding: const EdgeInsets.all(20),
      // ignore: prefer_const_constructors
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          HoverIcon(
            icon: FontAwesomeIcons.facebook,
            url: 'https://www.facebook.com/yourprofile',
            tooltip: 'Facebook',
          ),
          SizedBox(width: 16),
          HoverIcon(
            icon: FontAwesomeIcons.instagram,
            url: 'https://www.instagram.com/yourprofile',
            tooltip: 'Instagram',
          ),
          SizedBox(width: 16),
          HoverIcon(
            icon: FontAwesomeIcons.github,
            url: 'https://github.com/yourprofile',
            tooltip: 'GitHub',
          ),
          SizedBox(width: 16),
          HoverIcon(
            icon: FontAwesomeIcons.youtube,
            url: 'https://www.youtube.com/yourprofile',
            tooltip: 'YouTube',
          ),
          SizedBox(width: 16),
          HoverIcon(
            icon: FontAwesomeIcons.twitter,
            url: 'https://twitter.com/yourprofile',
            tooltip: 'Twitter',
          ),
        ],
      ),
    );
  }
}
