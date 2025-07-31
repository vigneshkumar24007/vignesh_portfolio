import 'package:flutter/material.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  final List<Map<String, dynamic>> skills = const [
    {
      "title": "Flutter",
      "desc":
          "Proficient in developing responsive cross-platform apps using Flutter.",
      "percent": 90,
    },
    {
      "title": "Dart",
      "desc":
          "Strong foundation in Dart for building clean, efficient Flutter applications.",
      "percent": 85,
    },
    {
      "title": "Firebase",
      "desc":
          "Skilled in using Firebase for authentication, real-time database, and cloud functions.",
      "percent": 80,
    },
    {
      "title": "REST APIs",
      "desc":
          "Experienced in integrating and handling RESTful APIs using HTTP and Dio.",
      "percent": 85,
    },
    {
      "title": "SQLite",
      "desc":
          "Worked with local databases like SQLite for offline data storage.",
      "percent": 75,
    },
    {
      "title": "Git",
      "desc":
          "Proficient in using Git for code versioning, branching, and team collaboration.",
      "percent": 80,
    },
    {
      "title": "UI/UX Design",
      "desc":
          "Focused on building intuitive and elegant UIs using Flutter widgets.",
      "percent": 70,
    },
    {
      "title": "State Management",
      "desc":
          "Experienced with GetX, Provider, and BLoC for scalable app state handling.",
      "percent": 80,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 80),
      width: double.infinity,
      child: Column(
        children: [
          Text(
            'My Skills',
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 4),
          Container(width: 80, height: 2, color: Colors.brown.shade200),
          const SizedBox(height: 40),
          LayoutBuilder(
            builder: (context, constraints) {
              int crossAxisCount =
                  constraints.maxWidth > 1200
                      ? 3
                      : constraints.maxWidth > 800
                      ? 2
                      : 1;

              return Center(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 1300),
                  child: GridView.builder(
                    itemCount: skills.length,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: crossAxisCount,
                      crossAxisSpacing: 24,
                      mainAxisSpacing: 24,
                      childAspectRatio: 2.5,
                    ),
                    itemBuilder: (context, index) {
                      final skill = skills[index];
                      return _SkillCard(
                        title: skill['title'],
                        desc: skill['desc'],
                        percent: skill['percent'],
                      );
                    },
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class _SkillCard extends StatefulWidget {
  final String title;
  final String desc;
  final int percent;

  const _SkillCard({
    required this.title,
    required this.desc,
    required this.percent,
  });

  @override
  State<_SkillCard> createState() => _SkillCardState();
}

class _SkillCardState extends State<_SkillCard> {
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovering = true),
      onExit: (_) => setState(() => _isHovering = false),
      child: AnimatedContainer(
        transform: _isHovering ? Matrix4.identity() : Matrix4.identity(),
        duration: const Duration(milliseconds: 200),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              blurRadius: _isHovering ? 20 : 12,
              color: _isHovering ? Colors.brown : Colors.brown.withOpacity(0.5),
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.title,
              style: const TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 16,
                color: Color(0xFF0F172A),
              ),
            ),
            const SizedBox(height: 8),
            Expanded(
              child: Text(
                widget.desc,
                style: const TextStyle(fontSize: 13.5, color: Colors.black54),
              ),
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                  child: LinearProgressIndicator(
                    value: widget.percent / 100,
                    color: const Color(0xFFD2B48C),
                    backgroundColor: Colors.brown.shade100.withOpacity(0.3),
                  ),
                ),
                const SizedBox(width: 8),
                Text(
                  "${widget.percent}%",
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 13,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
