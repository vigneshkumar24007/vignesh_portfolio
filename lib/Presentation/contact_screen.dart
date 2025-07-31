import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart'; // 👈 this import

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ContactSection extends StatelessWidget {
  final GlobalKey resumeKey;
  const ContactSection({super.key, required this.resumeKey});

  @override
  Widget build(BuildContext context) {
    final nameController = TextEditingController();
    final emailController = TextEditingController();
    final subjectController = TextEditingController();
    final messageController = TextEditingController();
    final _resumeKey = GlobalKey();

    void _scrollToResume(BuildContext context) {
      final contextFound = _resumeKey.currentContext;
      if (contextFound != null) {
        Scrollable.ensureVisible(
          contextFound,
          duration: const Duration(milliseconds: 600),
          curve: Curves.easeInOut,
        );
      }
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 60),
      child: LayoutBuilder(
        builder: (context, constraints) {
          return constraints.maxWidth > 800
              ? Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Left Side
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "LET'S CONNECT",
                          style: Theme.of(context).textTheme.displaySmall
                              ?.copyWith(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 16),
                        RichText(
                          text: const TextSpan(
                            style: TextStyle(color: Colors.black),
                            children: [
                              TextSpan(text: "Say hello at "),
                              TextSpan(
                                text: "vigneshkumar24007@gmail.com",
                                style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 12),
                        Text.rich(
                          TextSpan(
                            text: "For more info, here's my ",
                            style: const TextStyle(color: Colors.black),
                            children: [
                              TextSpan(
                                text: "resume",
                                style: const TextStyle(
                                  color: Colors.pinkAccent,
                                  fontWeight: FontWeight.bold,
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Scrollable.ensureVisible(
                                      resumeKey.currentContext!,
                                      duration: Duration(milliseconds: 600),
                                      curve: Curves.easeInOut,
                                    );
                                  },

                              ),
                            ],
                          ),
                        ),

                        const SizedBox(height: 24),
                        Row(
                          children: [
                            _socialIcon(
                              FontAwesomeIcons.linkedinIn,
                              'https://www.linkedin.com/in/vigneshkumar007',
                            ),
                            _socialIcon(
                              FontAwesomeIcons.github,
                              'https://github.com/vigneshkumar24007',
                            ),

                            _socialIcon(
                              FontAwesomeIcons.instagram,
                              'https://www.instagram.com/vicky__x03/?igsh=MzFpeG1lc29ka2pp&utm_source=qr#',
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(width: 40),

                  // Right Side (Form)
                  Expanded(
                    flex: 3,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: _buildTextField(
                                "Name",
                                controller: nameController,
                              ),
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              child: _buildTextField(
                                "Email",
                                controller: emailController,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 12),
                        _buildTextField(
                          "Subject",
                          controller: subjectController,
                        ),
                        const SizedBox(height: 12),
                        _buildTextField(
                          "Message",
                          controller: messageController,
                          maxLines: 6,
                        ),
                        const SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: () {
                            // handle form submission
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 32,
                              vertical: 14,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          child: const Text(
                            "SUBMIT",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
              : Column(
                children: [
                  Text(
                    "LET'S CONNECT",
                    style: Theme.of(context).textTheme.displaySmall?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text("Say hello at ", style: TextStyle(fontSize: 16)),
                  const Text(
                    "vigneshkumar24007@gmail.com",
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Text.rich(
                    TextSpan(
                      text: "For more info, here's my ",
                      children: [
                        TextSpan(
                          text: "resume",
                          style: TextStyle(
                            color: Colors.pinkAccent,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
                  Row(
                    children: [
                      _socialIcon(
                        FontAwesomeIcons.linkedinIn,
                        'https://www.linkedin.com/in/vigneshkumar007',
                      ),
                      _socialIcon(
                        FontAwesomeIcons.github,
                        'https://github.com/your-username',
                      ),
                      _socialIcon(
                        FontAwesomeIcons.twitter,
                        'https://twitter.com/your-handle',
                      ),
                      _socialIcon(
                        FontAwesomeIcons.instagram,
                        'https://www.instagram.com/your-username',
                      ),
                    ],
                  ),

                  const SizedBox(height: 40),
                  _buildTextField("Name", controller: nameController),
                  const SizedBox(height: 12),
                  _buildTextField("Email", controller: emailController),
                  const SizedBox(height: 12),
                  _buildTextField("Subject", controller: subjectController),
                  const SizedBox(height: 12),
                  _buildTextField(
                    "Message",
                    controller: messageController,
                    maxLines: 6,
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 32,
                        vertical: 14,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: const Text(
                      "SUBMIT",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              );
        },
      ),
    );
  }

  static Widget _buildTextField(
    String hint, {
    required TextEditingController controller,
    int maxLines = 1,
  }) {
    return TextField(
      controller: controller,
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hint,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(6)),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 12,
        ),
      ),
    );
  }

  static Widget _socialIcon(IconData icon, String url) {
    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          onTap: () async {
            if (await canLaunchUrlString(url)) {
              await launchUrlString(url, mode: LaunchMode.externalApplication);
            } else {
              debugPrint("Could not launch $url");
            }
          },
          child: CircleAvatar(
            backgroundColor: Colors.grey.shade200,
            radius: 20,
            child: Icon(icon, size: 18, color: Colors.black87),
          ),
        ),
      ),
    );
  }
}
