import 'package:flutter/material.dart';

class ProjectSection extends StatelessWidget {
  const ProjectSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 60.0, horizontal: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "FEATURED PROJECTS",
            style: Theme.of(
              context,
            ).textTheme.displaySmall?.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),
          const Text(
            "Here are some of the selected projects that showcase my passion for front-end development.",
            style: TextStyle(fontSize: 16),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 40),
          Wrap(
            spacing: 25,
            runSpacing: 25,
            alignment: WrapAlignment.center,
            children: const [
              ProjectCard(
                imagePath: 'assets/images/project1.png',
                title: "Promotional landing page for our favorite show",
                description:
                    "Teamed up with a designer to breathe life into a promotional webpage for our favorite show. Developed a fully responsive website featuring a newsletter sign-up feature to keep fans updated with the latest adventures.",
                year: "2023",
                role: "Front-end Developer",
                buttons: ["LIVE DEMO", "SEE ON GITHUB"],
              ),
              ProjectCard(
                imagePath: 'assets/images/project1.png',
                title: "Blog site for World News",
                description:
                    "Mastered CSS Grid complexity in building an innovative news homepage, navigating intricate layout challenges for a seamless user experience. Leveraged the strength of semantic HTML to ensure user accessibility.",
                year: "2022",
                role: "Front-end Developer",
                client: "World News",
                buttons: ["VIEW PROJECT"],
              ),
              ProjectCard(
                imagePath: 'assets/images/project1.png',
                title: "Blog site for World News",
                description:
                    "Mastered CSS Grid complexity in building an innovative news homepage, navigating intricate layout challenges for a seamless user experience. Leveraged the strength of semantic HTML to ensure user accessibility.",
                year: "2022",
                role: "Front-end Developer",
                client: "World News",
                buttons: ["VIEW PROJECT"],
              ),
              ProjectCard(
                imagePath: 'assets/images/project1.png',
                title: "Blog site for World News",
                description:
                    "Mastered CSS Grid complexity in building an innovative news homepage, navigating intricate layout challenges for a seamless user experience. Leveraged the strength of semantic HTML to ensure user accessibility.",
                year: "2022",
                role: "Front-end Developer",
                client: "World News",
                buttons: ["VIEW PROJECT"],
              ),
              ProjectCard(
                imagePath: 'assets/images/project1.png',
                title: "Blog site for World News",
                description:
                    "Mastered CSS Grid complexity in building an innovative news homepage, navigating intricate layout challenges for a seamless user experience. Leveraged the strength of semantic HTML to ensure user accessibility.",
                year: "2022",
                role: "Front-end Developer",
                client: "World News",
                buttons: ["VIEW PROJECT"],
              ),
              ProjectCard(
                imagePath: 'assets/images/project1.png',
                title: "Blog site for World News",
                description:
                    "Mastered CSS Grid complexity in building an innovative news homepage, navigating intricate layout challenges for a seamless user experience. Leveraged the strength of semantic HTML to ensure user accessibility.",
                year: "2022",
                role: "Front-end Developer",
                client: "World News",
                buttons: ["VIEW PROJECT"],
              ),
              ProjectCard(
                imagePath: 'assets/images/project1.png',
                title: "Blog site for World News",
                description:
                    "Mastered CSS Grid complexity in building an innovative news homepage, navigating intricate layout challenges for a seamless user experience. Leveraged the strength of semantic HTML to ensure user accessibility.",
                year: "2022",
                role: "Front-end Developer",
                client: "World News",
                buttons: ["VIEW PROJECT"],
              ),
              ProjectCard(
                imagePath: 'assets/images/project1.png',
                title: "Blog site for World News",
                description:
                    "Mastered CSS Grid complexity in building an innovative news homepage, navigating intricate layout challenges for a seamless user experience. Leveraged the strength of semantic HTML to ensure user accessibility.",
                year: "2022",
                role: "Front-end Developer",
                client: "World News",
                buttons: ["VIEW PROJECT"],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ProjectCard extends StatefulWidget {
  final String imagePath;
  final String title;
  final String description;
  final String year;
  final String role;
  final String? client;
  final List<String> buttons;

  const ProjectCard({
    super.key,
    required this.imagePath,
    required this.title,
    required this.description,
    required this.year,
    required this.role,
    this.client,
    required this.buttons,
  });

  @override
  State<ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  bool isHovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovering = true),
      onExit: (_) => setState(() => isHovering = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeOut,
        transform: isHovering ? Matrix4.identity() : Matrix4.identity(),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
          border: Border.all(color: Colors.grey.shade200),
          boxShadow: [
            if (isHovering)
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                blurRadius: 25,
                offset: const Offset(0, 15),
              ),
          ],
        ),
        width: 400,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(12),
              ),
              child: Image.asset(widget.imagePath, fit: BoxFit.cover),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(widget.description),
                  const SizedBox(height: 12),
                  Wrap(
                    spacing: 16,
                    runSpacing: 4,
                    children: [
                      Text(
                        "Year: ${widget.year}",
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      if (widget.client != null)
                        Text(
                          "Client: ${widget.client}",
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      Text(
                        "Role: ${widget.role}",
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Wrap(
                    spacing: 12,
                    children:
                        widget.buttons
                            .map(
                              (btn) => OutlinedButton(
                                onPressed: () {},
                                child: Text(btn),
                              ),
                            )
                            .toList(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
