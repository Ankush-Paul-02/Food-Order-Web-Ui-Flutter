import 'package:flutter/material.dart';
import '../../utils/constants.dart';
import 'about_section.dart';

class BannerSection extends StatelessWidget {
  const BannerSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          flex: 3,
          child: AboutSection(),
        ),
        const SizedBox(
          width: kDefaultPadding,
        ),
        Expanded(
          flex: 2,
          child: Column(
            children: [
              Image.asset('assets/images/banner.png'),
            ],
          ),
        )
      ],
    );
  }
}
