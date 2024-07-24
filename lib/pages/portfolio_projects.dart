import 'package:flutter/material.dart';

import '../styles/hover_animation.dart';
import '../widgets/project_card.dart'; // Import the updated ProjectCard

class PortfolioProjects extends StatelessWidget {
  const PortfolioProjects({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Portfolio Projects',
            style: TextStyle(fontSize: 34, fontWeight: FontWeight.w900),
          ),
          SizedBox(height:30),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Wrap(
              spacing: 25,
              runSpacing: 25,
              children: [
                HoverAnimation(
                  child: ProjectCard(
                    title: 'Project 1',
                    img: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7kT6v145H1R5KkLUExn9nndEzgjNP_knYug&s",
                    ),
                    description: 'Description of Project 1',
                    projectUrl: 'https://github.com/Jornvii',
                  ),
                ),
                HoverAnimation(
                  child: ProjectCard(
                    title: 'Project 2',
                    img: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7kT6v145H1R5KkLUExn9nndEzgjNP_knYug&s"),
                    description: 'Description of Project 2',
                    projectUrl: 'https://github.com/Jornvii',
                  ),
                ),
                HoverAnimation(
                  child: ProjectCard(
                    title: 'Project 2',
                    img: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7kT6v145H1R5KkLUExn9nndEzgjNP_knYug&s"),
                    description: 'Description of Project 2',
                    projectUrl: 'https://github.com/Jornvii',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
