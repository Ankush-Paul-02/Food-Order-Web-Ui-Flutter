import 'package:flutter/material.dart';
import '../../utils/constants.dart';
import '../widgets/body_container.dart';
import '../widgets/footer.dart';
import '../widgets/header_container.dart';
import '../widgets/mobile_menu.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: const [
            DrawerHeader(
              child: Center(
                child: Text(
                  'Foodie',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w900,
                    color: kSecondaryColor,
                  ),
                ),
              ),
            ),
            MobMenu(),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            HeaderContainer(),
            BodyContainer(),
            SizedBox(height: 30),
            Footer()
          ],
        ),
      ),
    );
  }
}
