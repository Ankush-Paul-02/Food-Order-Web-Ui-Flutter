import 'package:flutter/material.dart';
import 'package:food_order_web_flutter/pages/widgets/header_menu.dart';
import '../../utils/constants.dart';

class MobMenu extends StatefulWidget {
  const MobMenu({super.key});

  @override
  State<MobMenu> createState() => _MobMenuState();
}

class _MobMenuState extends State<MobMenu> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeaderMenu(
            press: () {},
            title: 'Menu',
          ),
          const SizedBox(height: kDefaultPadding),
          HeaderMenu(
            press: () {},
            title: 'For Riders',
          ),
          const SizedBox(height: kDefaultPadding),
          HeaderMenu(
            press: () {},
            title: 'About',
          ),
          const SizedBox(height: kDefaultPadding),
          HeaderMenu(
            press: () {},
            title: 'Reviews',
          ),
          const SizedBox(height: kDefaultPadding),
          HeaderMenu(
            press: () {},
            title: 'Restaurants',
          ),
        ],
      ),
    );
  }
}
