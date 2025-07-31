import 'package:flutter/material.dart';

class ResumeSection extends StatelessWidget {
  const ResumeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 64),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 900),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _buildSectionHeader(),
              const SizedBox(height: 50),
              _buildExperienceSection(),
              const SizedBox(height: 50),
              _buildEducationSection(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSectionHeader() {
    return Column(
      children: const [
        Text(
          'Resume',
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: Color(0xFF8D3A23),
          ),
        ),
        SizedBox(height: 4),
        // Underline
        SizedBox(
          height: 4,
          width: 60,
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: Color(0xFFE76F51),
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
          ),
        ),
        SizedBox(height: 16),
        Text(
          'A passionate Flutter developer with a strong focus on building efficient, user-centric mobile\napplications. Experienced in Dart, Flutter, state management, and Firebase, with a commitment to\nwriting clean, maintainable code and delivering impactful digital solutions.',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 13.5, color: Colors.black87),
        ),
      ],
    );
  }

  Widget _buildExperienceSection() {
    return Column(
      children: [
        const Text(
          'Work Experience',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Color(0xFF0F172A),
          ),
        ),
        const SizedBox(height: 4),
        const Text(
          'Hands-on experience in building scalable, user-centric mobile applications using Flutter and Dart across diverse industry needs.',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 14, color: Colors.black87),
        ),
        const SizedBox(height: 24),
        _buildTimelineItem(
          title: 'Fenizo Technologies',
          subtitle: 'Senior Flutter Developer',
          duration: 'March 2025 – Present',
          points: [
            'Developing high-performance Flutter applications to meet client needs.',
            'Worked on projects like Philia CRM and Inpack billing app using RESTful APIs and Flutter best practices.',
            'Ensuring mobile app reliability, maintainability, and smooth UI/UX across platforms.',
          ],
        ),
        const SizedBox(height: 24),
        _buildTimelineItem(
          title: 'NMinfotech Solutions',
          subtitle: 'Flutter Developer',
          duration: 'Jan 2024 to March 2025',
          points: [
            'Designed, developed, and maintained mobile apps using Flutter and Firebase.',
            'Modularized and optimized legacy code to reduce costs by 15% and improve efficiency.',
            'Played a key role in educating new hires by documenting workflows and reducing onboarding time.',
          ],
        ),
      ],
    );
  }

  Widget _buildEducationSection() {
    return Column(
      children: [
        const Text(
          'My Education',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Color(0xFF0F172A),
          ),
        ),
        const SizedBox(height: 4),
        const Text(
          'Academic background in Computer Science with a strong foundation in problem-solving and software development.',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 14, color: Colors.black87),
        ),
        const SizedBox(height: 24),
        _buildTimelineItem(
          title: 'Noorul Islam College of Arts and Science',
          subtitle: 'B.Sc. in Computer Science',
          duration: '2018 – 2021',
          points: [
            'Completed undergraduate studies with a strong focus on programming, data structures, and mobile application development.',
          ],
        ),
        const SizedBox(height: 24),
        _buildTimelineItem(
          title: 'Government Higher Secondary School',
          subtitle: 'Higher Secondary Certificate',
          duration: '2017 – 2018',
          points: [
            'Completed higher secondary education with a strong academic foundation, supporting my journey into the field of technology and software development.',
          ],
        ),
      ],
    );
  }

  Widget _buildTimelineItem({
    required String title,
    required String subtitle,
    required String duration,
    required List<String> points,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 4),
              width: 10,
              height: 10,
              decoration: const BoxDecoration(
                color: Color(0xFFE76F51),
                shape: BoxShape.circle,
              ),
            ),
          ],
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF0F172A),
                ),
              ),
              const SizedBox(height: 4),
              Text(
                duration,
                style: const TextStyle(color: Colors.deepOrange, fontSize: 13),
              ),
              const SizedBox(height: 8),
              Text(
                subtitle,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14.5,
                ),
              ),
              const SizedBox(height: 4),
              ...points.map(
                (p) => Padding(
                  padding: const EdgeInsets.only(bottom: 4),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("• ", style: TextStyle(fontSize: 14)),
                      Expanded(
                        child: Text(p, style: const TextStyle(fontSize: 14)),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
