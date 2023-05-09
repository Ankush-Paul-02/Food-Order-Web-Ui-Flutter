import 'package:flutter/material.dart';

class HeaderMenu extends StatelessWidget {
  final String title;
  final VoidCallback press;
  const HeaderMenu({
    super.key,
    required this.title,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 16,
        ),
      ),
    );
  }
}
