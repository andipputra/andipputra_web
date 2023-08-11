import 'package:andipputra_web/presentation/pages/home/components/body/about.dart';
import 'package:andipputra_web/presentation/pages/home/components/body/education.dart';
import 'package:andipputra_web/presentation/pages/home/components/body/experience.dart';
import 'package:andipputra_web/presentation/pages/home/components/body/skills.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/home.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) {
        switch (controller.selectedNavigatorMenu.value) {
          case 'About':
            return const AboutBodyComponent();
          case 'Experience':
            return const ExperienceBodyComponent();
          case 'Education':
            return const EducationBodyComponent();
          case 'Skills':
            return const SkillsBodyComponent();
          default:
            return const Center(
              child: CircularProgressIndicator(),
            );
        }
      },
    );
  }
}
