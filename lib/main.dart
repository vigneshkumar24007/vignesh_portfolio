import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vicky_porfolio/Presentation/about_screen.dart';
import 'package:vicky_porfolio/Presentation/contact_screen.dart';
import 'package:vicky_porfolio/Presentation/hero_screen.dart';
import 'package:vicky_porfolio/Presentation/projects_screen.dart';
import 'package:vicky_porfolio/Presentation/resume_screen.dart';
import 'package:vicky_porfolio/Presentation/skill_section.dart';

void main() => runApp(const MyPortfolio());

class MyPortfolio extends StatelessWidget {
  const MyPortfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vignesh Kumar | Portfolio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Arial',
        scaffoldBackgroundColor: Colors.white,
      ),
      home:   PortfolioHomePage(),
    );
  }
}

class PortfolioHomePage extends StatelessWidget {
    PortfolioHomePage({super.key});
  final ScrollController scrollController = ScrollController();
    final GlobalKey resumeKey = GlobalKey();

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth > 800) {
              return const DesktopAppBar();
            } else {
              return const MobileAppBar();
            }
          },
        ),
      ),
      body: SingleChildScrollView(
        controller: scrollController,
        child: Column(
          children:   [
            HeroSection(),
            SizedBox(height: 60),
            SkillsSection(),

            SizedBox(height: 60),
            ResumeSection(key: resumeKey,),

            SizedBox(height: 60),
            ProjectSection(),
            SizedBox(height: 60),
            AboutMeSection(),
            SizedBox(height: 60),
            ContactSection(resumeKey: resumeKey),

          ],
        ),
      ),
    );
  }
}

class DesktopAppBar extends StatelessWidget {
  const DesktopAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xffb0947c),
      elevation: 3,
      title: const Text("Vignesh Kumar", style: TextStyle(color: Colors.white)),
      actions: [
        _navItem("Main.dart"),
        _navItem("Code & UI"),
        _navItem("Behind the Work"),
        _navItem("Ping Me"),
        const SizedBox(width: 20),
      ],
    );
  }

  Widget _navItem(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: TextButton(
        onPressed: () {},
        child: Text(text, style: const TextStyle(color: Colors.white)),
      ),
    );
  }
}

class MobileAppBar extends StatelessWidget {
  const MobileAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFFF7F8F9),
      elevation: 0,
      title: const Text("Vignesh Kumar", style: TextStyle(color: Colors.black)),
    );
  }
}
