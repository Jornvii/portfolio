import 'package:flutter/material.dart';
import 'package:flutter_application_3/hover_animation.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectCard extends StatelessWidget {
  final String title;
  final NetworkImage img;
  final String description;
  final String projectUrl;

  ProjectCard(
      {required this.title,
      required this.img,
      required this.description,
      required this.projectUrl});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Container(
        padding: const EdgeInsets.all(16.0),
        width: 350,
        // height: 380,
        color: Color.fromARGB(104, 255, 193, 7),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Image(image: img),
            const SizedBox(height: 8),
            Text(
              description,
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 8),
            HoverAnimation(
              child: TextButton(
                onPressed: () {
                  _launchURL('https://github.com/Jornvii/portfolio');
                },
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('View '),
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
