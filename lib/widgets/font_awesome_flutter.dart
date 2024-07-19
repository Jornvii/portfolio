import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaIcon extends StatelessWidget {
  final IconData icon;
  final String url;
  final String tooltip;

  const SocialMediaIcon({
    Key? key,
    required this.icon,
    required this.url,
    required this.tooltip,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (event) => {},
      onExit: (event) => {},
      child: GestureDetector(
        onTap: () async {
          if (await canLaunch(url)) {
            await launch(url);
          }
        },
        child: Tooltip(
          message: tooltip,
          child: Icon(icon, size: 30),
        ),
      ),
    );
  }
}
