import 'package:flutter/material.dart';
import 'package:food_order_web_flutter/models/responsive.dart';
import 'package:food_order_web_flutter/pages/widgets/products.dart';
import 'package:food_order_web_flutter/pages/widgets/services_card.dart';
import '../../models/product_model.dart';
import '../../utils/constants.dart';
import 'email_banner.dart';

class BodyContainer extends StatelessWidget {
  const BodyContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(kDefaultPadding),
      constraints: const BoxConstraints(maxWidth: kMaxWidth),
      child: Column(
        children: [
          const ServicesCard(),
          const SizedBox(
            height: kDefaultPadding,
          ),
          Responsive(
            mobile: ProductCard(
              crossAxisCount: size.width < 690 ? 2 : 3,
              aspectRatio: size.width < 560 ? 0.85 : 1.1,
            ),
            tablet: ProductCard(
              crossAxisCount: size.width < 825 ? 2 : 3,
              aspectRatio: size.width < 825 ? 0.85 : 1.1,
            ),
            desktop: ProductCard(
              crossAxisCount: size.width < 650 ? 2 : 3,
              aspectRatio: size.width < 650 ? 0.85 : 1.1,
            ),
          ),
          const SizedBox(
            height: kDefaultPadding,
          ),
          const EmailBanner(),
          const SizedBox(
            height: kDefaultPadding,
          ),
        ],
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final int crossAxisCount;
  final double aspectRatio;
  const ProductCard({
    super.key,
    this.crossAxisCount = 3,
    this.aspectRatio = 1.1,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount, childAspectRatio: aspectRatio),
      itemBuilder: (context, index) => Products(
        press: () {},
        product: products[index],
      ),
      itemCount: products.length,
    );
  }
}
