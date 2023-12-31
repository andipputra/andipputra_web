import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExperienceBodyComponent extends StatelessWidget {
  const ExperienceBodyComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(16),
      shrinkWrap: true,
      itemBuilder: (context, index) => Card(
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: IntrinsicHeight(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (context.showNavbar) ...[
                  Expanded(
                    flex: 1,
                    child: Text(
                      'November 2022\n-\nDesember 2023',
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                      textAlign: TextAlign.end,
                    ),
                  ),
                  VerticalDivider(
                    thickness: 1,
                    color: Theme.of(context).colorScheme.onPrimaryContainer,
                  ),
                ],
                Expanded(
                  flex: 7,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      if (!context.showNavbar) ...[
                        Text(
                          'November 2022 - Desember 2023',
                          style: Theme.of(context).textTheme.titleSmall,
                          textAlign: TextAlign.end,
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                      ],
                      Text(
                        'Pocket.co.id',
                        style:
                            Theme.of(context).textTheme.headlineSmall?.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                      ),
                      Text(
                        'Junior Frontend Engineer',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        'Saya mengerjakan pembuatan aplikasi mobile pocket.co.id menggunakan flutter untuk frontend frameworknya dan Firebase (Firebase Authentication, Firebase Storage, Firestore, Cloud Function, FCM) sebagai servicenya',
                        style: Theme.of(context).textTheme.bodyLarge,
                        textAlign: TextAlign.justify,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      separatorBuilder: (context, index) => const SizedBox(
        height: 16,
      ),
      // separatorBuilder: (context, index) => Container(
      //   margin: const EdgeInsets.symmetric(vertical: 16),
      //   color: Theme.of(context).colorScheme.onPrimaryContainer,
      //   width: double.infinity,
      //   height: 1,
      // ),
      itemCount: 40,
    );
  }
}
