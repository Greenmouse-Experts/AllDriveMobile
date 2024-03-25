import 'package:flutter/material.dart';
import 'package:roadside_heroes_app/constants.dart';
import 'package:roadside_heroes_app/screens/user%20screens/images_data.dart';
import 'package:roadside_heroes_app/screens/user%20screens/widgets/home_screen/ad_widget.dart';
import 'package:roadside_heroes_app/screens/user%20screens/widgets/home_screen/appBar_widget.dart';
import 'package:roadside_heroes_app/screens/user%20screens/widgets/home_screen/navigation_widgets.dart';
import 'package:roadside_heroes_app/screens/user%20screens/widgets/home_screen/home_search_bar_widgets.dart';

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
      body: LayoutBuilder(
        builder: (context, constraints) {
          return GestureDetector(
            onTap: () {
              FocusScope.of(context).unfocus();
            },
            child: SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          AppBarWidget(
                            imagePath: AppImages.appLogo,
                            isignedIn: false,
                            constraint: constraints,
                          ),
                          addWidth(constraints.maxWidth * 0.05),
                          GestureDetector(
                            onTap: () {
                              showAlertDialog(context);
                            },
                            child: SizedBox(
                              height: 60,
                              width: 60,
                              child: Image.asset(AppImages.unsignedImgeProfile),
                            ),
                          )
                        ],
                      ),
                    ),
                    addHeight(20),
                    const AdWidget(),
                    addHeight(20),
                    pageDivider(),
                    const HomeSearchBar(),
                    pageDivider(),
                    const NavigationWidget(),
                    pageDivider(),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
