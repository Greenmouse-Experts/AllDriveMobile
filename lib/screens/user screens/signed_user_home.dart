import 'package:flutter/material.dart';
import 'package:roadside_heroes_app/constants.dart';
import 'package:roadside_heroes_app/screens/user%20screens/tab_settings.dart';
import 'package:roadside_heroes_app/screens/user%20screens/widgets/home_screen/ad_widget.dart';
import 'package:roadside_heroes_app/screens/user%20screens/widgets/home_screen/appBar_widget.dart';
import 'package:roadside_heroes_app/screens/user%20screens/widgets/home_screen/navigation_widgets.dart';
import 'package:roadside_heroes_app/screens/user%20screens/widgets/home_screen/home_search_bar_widgets.dart';
import 'package:roadside_heroes_app/screens/user%20screens/widgets/home_screen/request_widget.dart';

class SignedInUserHomeScreen extends StatefulWidget {
  final String imagePath;
  const SignedInUserHomeScreen({super.key, required this.imagePath});

  @override
  State<SignedInUserHomeScreen> createState() => SignedInUserHomeScreenState();
}

class SignedInUserHomeScreenState extends State<SignedInUserHomeScreen>
    with SingleTickerProviderStateMixin {
  Widget pageDivider({double thickeness = 10}) {
    double thickness = thickeness;
    return Divider(
      thickness: thickness,
      color: const Color(0xFFF4F4F4),
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: AppBarWidget(
                    imagePath: "assets/images/signed_in_image.png",
                  ),
                ),
                addWidth(20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                      backgroundColor: const Color(0xFF172748),
                      fixedSize: const Size(50, 60)),
                  onPressed: () => moveTo(const TabButtonSettings(), context),
                  child: const Icon(
                    Icons.menu_sharp,
                    color: Color(0xFFFCEFE2),
                    size: 30,
                  ),
                )
              ],
            ),
            addHeight(15),
            const AdWidget(),
            addHeight(15),
            pageDivider(thickeness: 5),
            const HomeSearchBar(),
            pageDivider(),
            const NavigationWidget(),
            pageDivider(thickeness: 20),
            const RequestWidget()
          ],
        ),
      )),
    );
  }
}
