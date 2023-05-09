import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:food_order_web_flutter/models/product_model.dart';
import '../../utils/constants.dart';

class Products extends StatelessWidget {
  final Product product;
  final VoidCallback press;
  const Products({
    super.key,
    required this.product,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kDefaultPadding / 2),
      child: InkWell(
        onTap: press,
        child: Material(
          elevation: 5,
          borderRadius: BorderRadius.circular(15),
          child: Container(
            padding: const EdgeInsets.all(5),
            // height: 310,
            // width: 310,
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    product.image,
                    // height: 250,
                    // width: 300,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  height: kDefaultPadding / 2,
                ),
                AutoSizeText(
                  product.title,
                  maxLines: 2,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
