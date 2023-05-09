import 'package:flutter/material.dart';
import 'package:food_order_web_flutter/models/responsive.dart';
import 'package:food_order_web_flutter/pages/widgets/mobile_footer_menu.dart';
import 'package:food_order_web_flutter/pages/widgets/social_icon.dart';
import '../../utils/constants.dart';
import 'header_web_menu.dart';

class Footer extends StatelessWidget {
  const Footer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: kPrimaryColor,
      child: Container(
        padding: const EdgeInsets.all(kDefaultPadding),
        constraints: const BoxConstraints(maxWidth: kMaxWidth),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      const Text(
                        'Foodie',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w900,
                          color: kSecondaryColor,
                        ),
                      ),
                      const SizedBox(height: kDefaultPadding),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          SocialIcon(
                            icon: 'assets/icons/facebook-2.svg',
                          ),
                          SizedBox(
                            width: kDefaultPadding / 2,
                          ),
                          SocialIcon(
                            icon: 'assets/icons/google-icon.svg',
                          ),
                          SizedBox(
                            width: kDefaultPadding / 2,
                          ),
                          SocialIcon(
                            icon: 'assets/icons/twitter.svg',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                if (Responsive.isDesktop(context))
                  const Expanded(
                    flex: 3,
                    child: HeaderWebMenu(),
                  ),
              ],
            ),
            const SizedBox(
              height: kDefaultPadding,
            ),
            if (!Responsive.isDesktop(context)) const MobileFooterMenu(),
          ],
        ),
      ),
    );
  }
}
