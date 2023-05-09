import 'package:flutter/material.dart';
import 'package:food_order_web_flutter/pages/widgets/services.dart';
import '../../utils/constants.dart';

class ServicesCard extends StatelessWidget {
  const ServicesCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: kDefaultPadding * 2,
      children: const [
        Services(
          image: 'assets/images/delivery_boy.jpg',
          title: 'Fastest Delivery',
        ),
        Services(
          image: 'assets/images/menu.jpg',
          title: 'So Much to Choose From',
        ),
        Services(
          image: 'assets/images/offer.jpg',
          title: 'Best Offer in Town',
        ),
      ],
    );
  }
}
