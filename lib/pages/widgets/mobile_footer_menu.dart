import 'package:flutter/material.dart';
import '../../utils/constants.dart';
import 'header_menu.dart';


class MobileFooterMenu extends StatelessWidget {
  const MobileFooterMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        HeaderMenu(
          press: () {},
          title: 'Menu',
        ),
        const SizedBox(width: kDefaultPadding),
        HeaderMenu(
          press: () {},
          title: 'For Riders',
        ),
        const SizedBox(width: kDefaultPadding),
        HeaderMenu(
          press: () {},
          title: 'About',
        ),
        const SizedBox(width: kDefaultPadding),
        HeaderMenu(
          press: () {},
          title: 'Reviews',
        ),
        const SizedBox(width: kDefaultPadding),
        HeaderMenu(
          press: () {},
          title: 'Restaurants',
        ),
      ],
    );
  }
}
