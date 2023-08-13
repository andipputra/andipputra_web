import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeAppbar extends StatelessWidget {
  const HomeAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.all(
            16,
          ),
          child: Center(
            child: Text(
              'Andi Pratama Putra Portfolio',
              style: context.showNavbar
                  ? Theme.of(context).textTheme.displaySmall
                  : Theme.of(context).textTheme.titleLarge,
            ),
          ),
        ),
      ),
    );
  }
}
