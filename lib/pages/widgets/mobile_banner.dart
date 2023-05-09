import 'package:flutter/material.dart';
import 'about_section.dart';

class MobileBanner extends StatefulWidget {
  const MobileBanner({super.key});

  @override
  State<MobileBanner> createState() => _MobileBannerState();
}

class _MobileBannerState extends State<MobileBanner> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/images/banner.png',
          height: 250,
          width: 250,
        ),
        const SizedBox(
          height: 30,
        ),
        const AboutSection(),
      ],
    );
  }
}
