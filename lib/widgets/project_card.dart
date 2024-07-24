import 'package:flutter/material.dart';
import 'package:flutter_application_3/styles/hover_animation.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectCard extends StatelessWidget {
  final String title;
  final NetworkImage img;
  final String description;
  final String projectUrl;

  const ProjectCard({
    super.key,
    required this.title,
    required this.img,
    required this.description,
    required this.projectUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Container(
        padding: const EdgeInsets.all(16.0),
        width: 350,
        color: const Color.fromARGB(255, 213, 228, 255),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Text(
                title,
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 8),
            Image(image: img),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                description,
                style: const TextStyle(fontSize: 16),
              ),
            ),
            const SizedBox(height: 8),
            HoverAnimation(
              child: TextButton(
                onPressed: () {
                  _launchURL(projectUrl);
                },
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white, backgroundColor: Colors.blue, 
                  padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8), 
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('View '),
                      SizedBox(width: 4),
                      Icon(Icons.arrow_forward),
                    ],
                  ),
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
