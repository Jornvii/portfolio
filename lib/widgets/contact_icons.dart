import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../styles/hover_icon.dart'; // Import HoverIcon widget

class ContactIcons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      // ignore: prefer_const_constructors
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          HoverIcon(
            icon: FontAwesomeIcons.facebook,
            url: 'https://www.facebook.com/profile.php?id=100007862552781',
            tooltip: 'Facebook',
          ),
          SizedBox(width: 16),
          HoverIcon(
            icon: FontAwesomeIcons.instagram,
            url: 'https://www.instagram.com/ddd_o_mmm?fbclid=IwZXh0bgNhZW0CMTAAAR18sZNvxF-3qwkdojZdnAUKdDF222bOwnlDelMIp_0xwuA0_cz9ynov0_A_aem_6JlE4iwLDqdtMPYCLryvLA',
            tooltip: 'Instagram',
          ),
          SizedBox(width: 16),
          HoverIcon(
            icon: FontAwesomeIcons.github,
            url: 'https://github.com/Jornvii',
            tooltip: 'GitHub',
          ),
          SizedBox(width: 16),
          HoverIcon(
            icon: FontAwesomeIcons.youtube,
            url: 'https://www.youtube.com',
            tooltip: 'YouTube',
          ),
          SizedBox(width: 16),
          HoverIcon(
            icon: FontAwesomeIcons.twitter,
            url: 'https://twitter.com',
            tooltip: 'Twitter',
          ),
        ],
      ),
    );
  }
}
