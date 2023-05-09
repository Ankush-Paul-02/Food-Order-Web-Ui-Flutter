import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:food_order_web_flutter/models/responsive.dart';
import '../../utils/constants.dart';
import 'header_web_menu.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        if (!Responsive.isDesktop(context))
          Builder(
            builder: (context) => IconButton(
              onPressed: () => Scaffold.of(context).openDrawer(),
              icon: const Icon(Icons.menu),
            ),
          ),
        const AutoSizeText(
          'Foodie',
          maxLines: 1,
          minFontSize: 16,
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w900,
            color: kSecondaryColor,
          ),
        ),
        const Spacer(),
        if (Responsive.isDesktop(context)) const HeaderWebMenu(),
        const Spacer(),
        size.width > 400
            ? Expanded(
                child: Container(
                  height: 50,
                  width: 50,
                  padding: const EdgeInsets.only(
                      left: kDefaultPadding / 2, right: kDefaultPadding / 2),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.grey.withOpacity(0.3),
                    ),
                  ),
                  child: Center(
                    child: TextFormField(
                      autocorrect: true,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.black,
                        ),
                        focusedBorder:
                            UnderlineInputBorder(borderSide: BorderSide.none),
                        enabledBorder:
                            UnderlineInputBorder(borderSide: BorderSide.none),
                        hintText: 'Search',
                        hintStyle: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                ),
              )
            : Container(
                height: 50,
                padding: const EdgeInsets.only(
                    left: kDefaultPadding / 2, right: kDefaultPadding / 2),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.grey.withOpacity(0.3),
                  ),
                ),
                child: const Icon(Icons.search),
              ),
        const SizedBox(width: kDefaultPadding / 2),
        Container(
          height: 45,
          width: 45,
          decoration: const BoxDecoration(
            color: kSecondaryColor,
            borderRadius: BorderRadius.all(
              Radius.circular(
                kDefaultPadding / 2.5,
              ),
            ),
          ),
          child: const Center(
            child: Icon(
              Icons.shopping_cart_rounded,
              color: Colors.white,
              size: 22,
            ),
          ),
        ),
      ],
    );
  }
}
