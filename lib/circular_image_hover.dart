import 'package:flutter/material.dart';

class CircularImageHover extends StatefulWidget {
  final String imageUrl;

  const CircularImageHover({required this.imageUrl});

  @override
  _CircularImageHoverState createState() => _CircularImageHoverState();
}

class _CircularImageHoverState extends State<CircularImageHover>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(milliseconds: 300),
      vsync: this,
    );
    _scaleAnimation = Tween<double>(begin: 1.0, end: 1.1).animate(_controller);
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => _controller.forward(),
      onExit: (_) => _controller.reverse(),
      child: ScaleTransition(
        scale: _scaleAnimation,
        child: ClipOval(
          child: Image.network(
            widget.imageUrl,
            width: 180,
            height: 180,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
