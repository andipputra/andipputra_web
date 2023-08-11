import 'package:andipputra_web/view/components/experience.dart';
import 'package:andipputra_web/view/components/introduction.dart';
import 'package:andipputra_web/view/components/project.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(16),
          shrinkWrap: true,
          children: const [
            IntroductionSection(),
            ProjectSection(),
            ExperienceSection(),
          ],
        ),
      ),
    );
  }
}
