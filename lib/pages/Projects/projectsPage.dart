import 'package:flutter/material.dart';
import 'package:my_portfolio/pages/Projects/projectCard.dart';
import 'package:my_portfolio/widgets/rectangleBox.dart';

class ProjectsPage extends StatelessWidget {
  ProjectsPage({super.key});

  final List<Map> projects = [
    {
      "title": "Task Manager",
      "description": "Manage daily tasks with state management.",
      "tech": "Flutter, Provider",
      "image": "assets/projectsImages/TasksApp.png",
      "link": "https://github.com/klarasameh1/TaskyApp"
    },
    {
      "title": "Mini Shop App",
      "description": "My First Flutter Experience , A Mini shopping app ",
      "tech": "Flutter, Provider",
      "image": "assets/projectsImages/shoppingApp.png",
      "link": "https://github.com/klarasameh1/ShoppingApp-SprintsUp"
    },
    {
      "title": "My Portfolio",
      "description": "Compilation of everything i learned through my simple flutter journey",
      "tech": "Flutter \"web\", Provider",
      "image": "assets/projectsImages/portfolio.png",
      "link": "https://github.com/klarasameh1/Portfolio"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(child: RectangleBox(content: "Projects")),
        const SizedBox(height: 30),
        Wrap(
          spacing: 20,
          runSpacing: 20,
          children: projects
              .map((project) => ProjectCard(
            title: project["title"]!,
            description: project["description"]!,
            tech: project["tech"]!,
            imagePath: project["image"]!,
            githubUrl: project["link"],
          ))
              .toList(),
        )
      ],
    );
  }
}