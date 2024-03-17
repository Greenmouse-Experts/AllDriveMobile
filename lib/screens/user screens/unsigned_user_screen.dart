import 'package:flutter/material.dart';
import 'package:roadside_heroes_app/constants.dart';
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
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
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
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 20, left: 10, right: 10),
                    child: AppBarWidget(
                      imagePath: "assets/images/Frame 1000009840.png",
                    ),
                  ),
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
              addHeight(5),
              const AdWidget(),
              addHeight(20),
              pageDivider(),
              const HomeSearchBar(),
              pageDivider(),
              const NavigationWidget(),
              pageDivider(),
            ],
          ),
        )),
      ),
    );
  }
}
