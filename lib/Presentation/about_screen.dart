import 'package:flutter/material.dart';

class AboutMeSection extends StatelessWidget {
  const AboutMeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 60),
      child: LayoutBuilder(
        builder: (context, constraints) {
          return constraints.maxWidth > 800
              ? Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Left Column
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "ABOUT ME",
                      style: Theme.of(context).textTheme.displaySmall?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      "Hey! I'm a Flutter developer who loves building apps that look and feel great on both iOS and Android. "
                          "I’m all about creating smooth, responsive user experiences with Flutter’s awesome toolkit. "
                          "Whether it’s adding cool animations, connecting to APIs, or just making sure everything runs super fast, "
                          "I’m always up for the challenge.\n\n"
                          "When I'm not coding, you’ll probably find me experimenting with new features or exploring what’s fresh in the Flutter world.",
                      style: TextStyle(fontSize: 16),
                    ),
                    const SizedBox(height: 24),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: const Text("MORE ABOUT ME"),
                    )
                  ],
                ),
              ),

              const SizedBox(width: 40),

              // Right Column (Cards)
              Expanded(
                flex: 3,
                child: Wrap(
                  spacing: 20,
                  runSpacing: 20,
                  children: const [
                    InfoCard(
                      icon: Icons.code,
                      title: "Mobile App Development",
                      description: "Creating responsive and interactive user interfaces with modern technologies.",
                    ),
                    InfoCard(
                      icon: Icons.phone_android,
                      title: "Responsive Design in Flutter",
                      description: "Building apps that provide a seamless experience on any screen size, from mobile phones to tablets and beyond.",
                    ),
                    InfoCard(
                      icon: Icons.layers,
                      title: "UI/UX Consideration",
                      description: "Creating intuitive user experiences with thoughtful interface design.",
                    ),
                    InfoCard(
                      icon: Icons.rocket_launch,
                      title: "Performance Optimization",
                      description: "Building fast-loading Apps with optimized assets and code.",
                    ),
                  ],
                ),
              )
            ],
          )
              : Column(
            children: [
              // Mobile Layout
              Text(
                "ABOUT ME",
                style: Theme.of(context).textTheme.displaySmall?.copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              const Text(
                "Hey! I'm a Flutter developer who loves building apps that look and feel great on both iOS and Android. "
                    "I’m all about creating smooth, responsive user experiences with Flutter’s awesome toolkit. "
                    "Whether it’s adding cool animations, connecting to APIs, or just making sure everything runs super fast, "
                    "I’m always up for the challenge.\n\n"
                    "When I'm not coding, you’ll probably find me experimenting with new features or exploring what’s fresh in the Flutter world.",
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: const Text("MORE ABOUT ME"),
              ),
              const SizedBox(height: 40),
              Wrap(
                spacing: 20,
                runSpacing: 20,
                children: const [
                  InfoCard(icon: Icons.code, title: "Mobile App Development", description: "Creating responsive and interactive user interfaces with modern technologies."),
                  InfoCard(icon: Icons.phone_android, title: "Responsive Design in Flutter", description: "Building apps that provide a seamless experience on any screen size, from mobile phones to tablets and beyond."),
                  InfoCard(icon: Icons.layers, title: "UI/UX Consideration", description: "Creating intuitive user experiences with thoughtful interface design."),
                  InfoCard(icon: Icons.rocket_launch, title: "Performance Optimization", description: "Building fast-loading Apps with optimized assets and code."),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
class InfoCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const InfoCard({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFFE7F7ED),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, size: 32, color: Colors.green),
          const SizedBox(height: 12),
          Text(title,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          Text(description),
        ],
      ),
    );
  }
}
