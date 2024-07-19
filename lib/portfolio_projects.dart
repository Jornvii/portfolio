import 'package:flutter/material.dart';
import 'contact_icons.dart';
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
            spacing: 25,
            runSpacing: 25,
            children: [
              HoverAnimation(
                child: ProjectCard(
                  title: 'Project 1',
                  img: const NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7kT6v145H1R5KkLUExn9nndEzgjNP_knYug&s",
                  ),
                  description: 'Description of Project 1',
                  projectUrl: 'https://www.youtube.com/',
                ),
              ),
              HoverAnimation(
                child: ProjectCard(
                  title: 'Project 2',
                  img: const NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7kT6v145H1R5KkLUExn9nndEzgjNP_knYug&s"),
                  description: 'Description of Project 2',
                  projectUrl: 'https://www.google.com/',
                ),
              ),
              HoverAnimation(
                child: ProjectCard(
                  title: 'Project 2',
                  img: const NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7kT6v145H1R5KkLUExn9nndEzgjNP_knYug&s"),
                  description: 'Description of Project 2',
                  projectUrl: 'https://www.google.com/',
                ),
              ),
              HoverAnimation(
                child: ProjectCard(
                  title: 'Project 2',
                  img: const NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7kT6v145H1R5KkLUExn9nndEzgjNP_knYug&s"),
                  description: 'Description of Project 2',
                  projectUrl: 'https://www.google.com/',
                ),
              ),
            ],
          ),
        ],

        //  const SizedBox(height: 32),
        //   ContactIcons(),
      ),
    );
  }
}
