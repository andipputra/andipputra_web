import 'package:andipputra_web/presentation/controllers/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeNavigator extends StatelessWidget {
  const HomeNavigator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: 16,
        right: 16,
        bottom: 16,
      ),
      child: Center(
        child: GetBuilder<HomeController>(
          builder: (controller) => ListView.separated(
            shrinkWrap: true,
            itemBuilder: (context, index) {
              final menu = controller.navigationMenuList[index];
              final selectedMenu =
                  menu == controller.selectedNavigatorMenu.value;

              return SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: selectedMenu
                        ? Theme.of(context).colorScheme.primaryContainer
                        : null,
                  ),
                  onPressed: selectedMenu
                      ? () {}
                      : () {
                          controller.selectMenu(menu);
                        },
                  child: Text(menu),
                ),
              );
            },
            separatorBuilder: (context, index) => const SizedBox(
              height: 24,
            ),
            itemCount: controller.navigationMenuList.length,
          ),
        ),
      ),
    );
  }
}
