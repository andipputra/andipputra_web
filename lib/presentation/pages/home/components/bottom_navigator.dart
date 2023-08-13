import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../../../controllers/home.dart';

class HomeBottomNavigator extends StatelessWidget {
  const HomeBottomNavigator({super.key});

  IconData getIcon(String menu) {
    switch (menu) {
      case 'About':
        return FontAwesomeIcons.person;
      case 'Experience':
        return FontAwesomeIcons.briefcase;
      case 'Education':
        return FontAwesomeIcons.school;
      case 'Skills':
        return FontAwesomeIcons.book;
      default:
        return FontAwesomeIcons.person;
    }
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (controller) {
      return BottomNavigationBar(
        landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
        backgroundColor: Theme.of(context).colorScheme.primary,
        selectedItemColor: Theme.of(context).colorScheme.primary,
        unselectedItemColor: Theme.of(context).colorScheme.primaryContainer,
        onTap: (value) {
          controller.selectMenu(controller.navigationMenuList[value]);
        },
        currentIndex: controller.navigationMenuList
            .indexOf(controller.selectedNavigatorMenu.value),
        items: controller.navigationMenuList
            .map(
              (menu) => BottomNavigationBarItem(
                icon: FaIcon(getIcon(menu)),
                label: menu,
              ),
            )
            .toList(),
      );
    });
  }
}
