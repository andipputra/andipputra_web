import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IntroductionSection extends StatelessWidget {
  const IntroductionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          color: Theme.of(context).colorScheme.primaryContainer,
          elevation: 2,
          child: Container(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                IntrinsicHeight(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                        radius: 128,
                        backgroundColor:
                            Theme.of(context).colorScheme.onPrimary,
                        foregroundImage:
                            const AssetImage('assets/img/avatar.jpg'),
                      ),
                      RichText(
                        text: TextSpan(
                          style: Theme.of(context)
                              .textTheme
                              .displayLarge
                              ?.copyWith(
                                color: Theme.of(context).colorScheme.onPrimary,
                                fontWeight: FontWeight.bold,
                              ),
                          children: [
                            const TextSpan(
                              text: "Hi there,\n",
                            ),
                            TextSpan(
                              text: "I'm Andi",
                              style: TextStyle(
                                color: Theme.of(context)
                                    .colorScheme
                                    .onPrimaryContainer,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        'I love build beauty app for your life',
                        style:
                            Theme.of(context).textTheme.headlineLarge?.copyWith(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onPrimaryContainer,
                                  fontWeight: FontWeight.bold,
                                ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  thickness: 2,
                  color: Theme.of(context).colorScheme.primary,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: const FaIcon(FontAwesomeIcons.instagram),
                      label: const Text('Instagram'),
                    ),
                    const SizedBox(
                      width: 24,
                    ),
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: const FaIcon(FontAwesomeIcons.linkedin),
                      label: const Text('LinkedIn'),
                    ),
                    const SizedBox(
                      width: 24,
                    ),
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: const FaIcon(FontAwesomeIcons.github),
                      label: const Text('GitHub'),
                    ),
                    const SizedBox(
                      width: 24,
                    ),
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: const FaIcon(FontAwesomeIcons.gitlab),
                      label: const Text('GitLab'),
                    ),
                  ],
                ),
                Divider(
                  thickness: 2,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
