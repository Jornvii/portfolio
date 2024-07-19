import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HoverIcon extends StatefulWidget {
  final IconData icon;
  final String url;
  final String tooltip;

  const HoverIcon({
    Key? key,
    required this.icon,
    required this.url,
    required this.tooltip,
  }) : super(key: key);

  @override
  _HoverIconState createState() => _HoverIconState();
}

class _HoverIconState extends State<HoverIcon> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (event) => setState(() => _isHovered = true),
      onExit: (event) => setState(() => _isHovered = false),
      child: GestureDetector(
        onTap: () async {
          if (await canLaunch(widget.url)) {
            await launch(widget.url);
          }
        },
        child: Tooltip(
          message: widget.tooltip,
          child: Icon(
            widget.icon,
            size: 30,
            color: _isHovered ? Colors.blue : Colors.black,
          ),
        ),
      ),
    );
  }
}
