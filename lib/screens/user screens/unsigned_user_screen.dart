import 'package:flutter/material.dart';
import 'package:roadside_heroes_app/constants.dart';
import 'package:roadside_heroes_app/images_data.dart';
import 'package:roadside_heroes_app/screens/user%20screens/widgets/home_screen/ad_widget.dart';
import 'package:roadside_heroes_app/screens/user%20screens/widgets/home_screen/appBar_widget.dart';
import 'package:roadside_heroes_app/screens/user%20screens/widgets/home_screen/navigation_widgets.dart';
import 'package:roadside_heroes_app/screens/user%20screens/widgets/home_screen/home_search_bar_widgets.dart';
import 'package:roadside_heroes_app/screens/user%20screens/widgets/home_screen/request_widget.dart';

class UnSignedUserHomeScreen extends StatefulWidget {
  const UnSignedUserHomeScreen({super.key});

  @override
  State<UnSignedUserHomeScreen> createState() => _UnSignedUserHomeScreen();
}

class _UnSignedUserHomeScreen extends State<UnSignedUserHomeScreen>
    with SingleTickerProviderStateMixin {
  Widget pageDivider() {
    return const Divider(
      thickness: 10,
      color: Color(0xFFF4F4F4),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            children: [
              LayoutBuilder(
                builder: (context, constraints) => Padding(
                  padding: EdgeInsets.only(top: 30, left: 10, right: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      AppBarWidget(
                          imagePath: AppImages.unsignedImgeProfile,
                          constraint: constraints),
                                                addWidth(constraints.maxWidth * 0.05),

                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40),
                            ),
                            backgroundColor: const Color(0xFF172748),
                            fixedSize: const Size(50, 60)),
                        onPressed: () {},
                        child: const Icon(
                          Icons.menu_sharp,
                          color: Color(0xFFFCEFE2),
                          size: 30,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              addHeight(5),
              const AdWidget(),
              addHeight(20),
              pageDivider(),
              const HomeSearchBar(),
              pageDivider(),
              const NavigationWidget(
                issignedIn: false,
              ),
              pageDivider(),
              RequestWidget(),
            ],
          ),
        )),
      ),
    );
  }
}
