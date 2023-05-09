import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import '../../utils/constants.dart';


class AboutSection extends StatelessWidget {
  const AboutSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const AutoSizeText(
          'Eat today',
          maxLines: 1,
          style: TextStyle(
            fontSize: 56,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: kDefaultPadding / 2),
        const AutoSizeText(
          'Live another day',
          maxLines: 1,
          style: TextStyle(
            fontSize: 56,
          ),
        ),
        const SizedBox(height: kDefaultPadding / 2),
        const Text(
          "Do you know what breakfast cereal is made of? It's made of all those little curly wooden shavings you find in pencil sharpeners",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black54,
          ),
        ),
        const SizedBox(
          height: kDefaultPadding,
        ),
        Container(
          height: 50,
          padding: const EdgeInsets.only(
              left: kDefaultPadding / 2, right: kDefaultPadding / 2),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Colors.grey.withOpacity(0.3),
            ),
          ),
          child: TextFormField(
            autocorrect: true,
            decoration: const InputDecoration(
              suffixIcon: Icon(
                Icons.adjust_rounded,
                color: kSecondaryColor,
              ),
              focusedBorder: UnderlineInputBorder(borderSide: BorderSide.none),
              enabledBorder: UnderlineInputBorder(borderSide: BorderSide.none),
              hintText: 'Search your favourite food',
            ),
          ),
        ),
        const SizedBox(
          height: kDefaultPadding,
        ),
        Row(
          children: [
            Expanded(
              child: MaterialButton(
                height: 55,
                onPressed: () {},
                color: kSecondaryColor,
                child: const Text(
                  'Delivery',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Text(
                'or',
                style: TextStyle(
                  color: kSecondaryColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Expanded(
              child: SizedBox(
                height: 50,
                child: OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: kSecondaryColor),
                  ),
                  child: const Text(
                    'Pick Up',
                    style: TextStyle(
                      color: kSecondaryColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
