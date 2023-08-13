import 'package:andipputra_web/presentation/controllers/home.dart';
import 'package:andipputra_web/presentation/pages/home/components/appbar.dart';
import 'package:andipputra_web/presentation/pages/home/components/body.dart';
import 'package:andipputra_web/presentation/pages/home/components/bottom_navigator.dart';
import 'package:andipputra_web/presentation/pages/home/components/navigator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:
          context.showNavbar ? null : const HomeBottomNavigator(),
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// AppBar Section
          const HomeAppbar(),

          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (context.showNavbar) ...[
                  const Expanded(
                    flex: 1,
                    child: HomeNavigator(),
                  ),
                  VerticalDivider(
                    thickness: 2,
                    endIndent: 16,
                    color: Theme.of(context).colorScheme.primaryContainer,
                  ),
                ],
                const Expanded(
                  flex: 7,
                  child: HomeBody(),
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
