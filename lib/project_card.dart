import 'package:flutter/material.dart';
import 'package:flutter_application_3/hover_animation.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectCard extends StatelessWidget {
  final String title;
  final String description;
  final String projectUrl;

  ProjectCard(
      {required this.title,
      required this.description,
      required this.projectUrl});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Container(
        padding: const EdgeInsets.all(16.0),
        width: 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              description,
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 8),
            HoverAnimation(
              child: TextButton(
                onPressed: () {
                  _launchURL(projectUrl);
                },
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('View Code'),
                    SizedBox(width: 4),
                    Icon(Icons.arrow_forward),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _launchURL(String url) async {
    Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $url';
    }
  }
}
