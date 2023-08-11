import 'package:flutter/material.dart';

class AboutBodyComponent extends StatelessWidget {
  const AboutBodyComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
        bottom: 16,
      ),
      child: Text(
        '''
Hai! Saya Andi Pratama Putra, seorang software engineer yang penuh semangat dan telah berpengalaman di bidang ini sejak tahun 2019.

Fokus utama saya adalah Pengembangan Perangkat Lunak Multiplatform dengan menggunakan Flutter, yang memungkinkan saya membuat aplikasi yang elegan dan responsif yang berfungsi dengan baik di berbagai platform. Namun, saya tidak terbatas hanya pada satu aspek, saya juga menguasai teknologi-teknologi frontend seperti HTML, CSS, JS, dan ReactJS, serta teknologi-teknologi backend seperti Go, PHP, dan Javascript.

Saat ini, saya mengaplikasikan keahlian saya sebagai Junior Frontend Engineer di pocket.co.id, di mana saya berkontribusi dalam pengembangan aplikasi mobile pocket.co.id dan mengasah kemampuan saya dalam dunia pengembangan web dan mobileyang selalu berkembang.

Pembelajaran kontinu adalah bagian fundamental dari perjalanan saya, dan saya selalu antusias menghadapi tantangan baru serta tetap mengikuti tren terbaru dalam rekayasa perangkat lunak.

Mari terhubung! Saya terbuka untuk kolaborasi, jaringan, dan berbagi wawasan dalam dunia teknologi. Jangan ragu untuk menghubungi saya jika Anda ingin membicarakan hal-hal mulai dari Flutter hingga pengembangan web atau hanya ingin berhubungan dan bertukar ide.
        ''',
        style: Theme.of(context).textTheme.titleLarge,
        textAlign: TextAlign.justify,
      ),
    );
  }
}
