import 'package:flutter/material.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        bool isWide = constraints.maxWidth > 800;

        return Container(
          color: const Color(0xFFf5f5dc),
          child: Padding(
            padding: const EdgeInsets.all(40),
            child:
                isWide
                    ? Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        _buildTextContent(),
                        const SizedBox(width: 40),

                        ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            "assets/images/profile.jpeg",
                            height: 550,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    )
                    : Column(
                      children: [
                        _buildTextContent(),
                        const SizedBox(height: 24),
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Positioned(
                              top: 10,
                              child: Container(
                                width: 160,
                                height: 160,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFFEEFE7),
                                  borderRadius: BorderRadius.circular(90),
                                ),
                              ),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.asset(
                                "assets/images/profile.png",
                                height: 300,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
          ),
        );
      },
    );
  }

  Widget _buildTextContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Passionate Flutter\nDeveloper Creating\nImpactful Apps",
          style: TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.w700,
            color: Color(0xFF0F172A),
          ),
        ),
        const SizedBox(height: 16),
        const Text(
          "Crafting Elegant Cross-Platform Apps That Make a Difference",
          style: TextStyle(fontSize: 16, color: Colors.grey),
        ),
        const SizedBox(height: 30),
        Row(
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFE76F51),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 14,
                ),
              ),
              child: const Text(
                "View My Work",
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(width: 16),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                foregroundColor: const Color(0xFFE76F51),
                side: const BorderSide(color: Color(0xFFE76F51)),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 14,
                ),
              ),
              child: const Text("Let's Connect"),
            ),
          ],
        ),
        const SizedBox(height: 40),
        // Stats
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            _statBox("2+", "Years Experience"),
            const SizedBox(width: 30),
            _statBox("10+", "Projects Completed"),
          ],
        ),
      ],
    );
  }

  Widget _statBox(String value, String label) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          value,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color(0xFF0F172A),
          ),
        ),
        const SizedBox(height: 4),
        Text(label, style: const TextStyle(fontSize: 14, color: Colors.grey)),
      ],
    );
  }
}
