import '../../utils/constants.dart';
import 'header_menu.dart';
import 'package:flutter/material.dart';

class HeaderWebMenu extends StatelessWidget {
  const HeaderWebMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
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
