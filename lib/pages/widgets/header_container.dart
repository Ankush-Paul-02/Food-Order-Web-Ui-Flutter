import 'package:flutter/material.dart';
import 'package:food_order_web_flutter/models/responsive.dart';
import '../../utils/constants.dart';
import 'banner_section.dart';
import 'header.dart';
import 'mobile_banner.dart';

class HeaderContainer extends StatelessWidget {
  const HeaderContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: kPrimaryColor,
      padding: const EdgeInsets.all(8),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(kDefaultPadding),
            constraints: const BoxConstraints(maxWidth: kMaxWidth),
            child: Column(
              children: [
                const Header(),
                const SizedBox(
                  height: 20,
                ),
                Responsive.isDesktop(context)
                    ? const BannerSection()
                    : const MobileBanner(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
