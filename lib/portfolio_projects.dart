import 'package:flutter/material.dart';
import 'hover_animation.dart';
import 'project_card.dart'; // Import the updated ProjectCard

class PortfolioProjects extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Portfolio Projects',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Wrap(
            spacing: 16,
            runSpacing: 16,
            children: [
              HoverAnimation(
                child: ProjectCard(
                  title: 'Project 1',
                  description: 'Description of Project 1',
                  projectUrl: 'https://www.youtube.com/',
                ),
              ),
              HoverAnimation(
                child: ProjectCard(
                  title: 'Project 2',
                  description: 'Description of Project 2',
                  projectUrl: 'https://www.google.com/',
                ),
              ),
              // Add more projects here
            ],
          ),
        ],
      ),
    );
  }
}
