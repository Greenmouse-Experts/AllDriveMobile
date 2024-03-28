import 'package:flutter/material.dart';
import 'package:roadside_heroes_app/constants.dart';
import 'package:roadside_heroes_app/screens/user%20screens/signed_user_home.dart';
import 'package:roadside_heroes_app/screens/user%20screens/tab_settings.dart';
import 'package:roadside_heroes_app/screens/user%20screens/widgets/home_screen/ad_widget.dart';
import 'package:roadside_heroes_app/screens/user%20screens/widgets/home_screen/appBar_widget.dart';
import 'package:roadside_heroes_app/screens/user%20screens/widgets/home_screen/navigation_widgets.dart';
import 'package:roadside_heroes_app/screens/user%20screens/widgets/home_screen/home_search_bar_widgets.dart';
import 'package:roadside_heroes_app/screens/user%20screens/widgets/home_screen/request_widget.dart';

class SignedInUserHomeScreen extends StatefulWidget {
  final String imagePath;
  const SignedInUserHomeScreen({
    super.key,
    required this.imagePath,
  });

  @override
  State<SignedInUserHomeScreen> createState() => SignedInUserHomeScreenState();
}

class SignedInUserHomeScreenState extends State<SignedInUserHomeScreen>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              LayoutBuilder(
                builder: (context, constraints) => Padding(
                  padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () {
                          SignedHomeScreen.changePage(
                            context,
                            "page2",
                            1,
                          );
                        },
                        child: AppBarWidget(
                            imagePath: "assets/images/signed_in_image.png",
                            isignedIn: true,
                            constraint: constraints),
                      ),
                      addWidth(constraints.maxWidth * 0.05),
                      SizedBox(
                        width: 55,
                        height: 55,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40),
                              ),
                              backgroundColor: const Color(0xFF172748),
                              fixedSize: const Size(50, 50)),
                          onPressed: () =>
                              moveTo(const TabButtonSettings(), context),
                          child: const Icon(
                            Icons.menu_sharp,
                            color: Color(0xFFFCEFE2),
                            size: 30,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              addHeight(10),
              const AdWidget(),
              pageDivider(thickeness: 2),
              const HomeSearchBar(),
              pageDivider(),
              const NavigationWidget(),
              pageDivider(thickeness: 20),
              const RequestWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
