import 'package:flutter/material.dart';
import 'package:roadside_heroes_app/constants.dart';
import 'package:roadside_heroes_app/screens/user%20screens/images_data.dart';
import 'package:roadside_heroes_app/routes/signed_home_screen_tab_navigator.dart';

class SignedHomeScreen extends StatefulWidget {
  const SignedHomeScreen({super.key});

  @override
  State<SignedHomeScreen> createState() => _SignedHomeScreenState();
}

class _SignedHomeScreenState extends State<SignedHomeScreen> {
  String _currentPage = "";
  int _selectedIndex = 0;
  List<String> pageKeys = ["page1", "page2", "page3", "page4"];
  final Map<String, GlobalKey<NavigatorState>> _navigatorKeys = {
    "page1": GlobalKey<NavigatorState>(),
    "page2": GlobalKey<NavigatorState>(),
    "page3": GlobalKey<NavigatorState>(),
    "page4": GlobalKey<NavigatorState>(),
  };

  void _selectPage(String tabItem, int index) {
    if (tabItem == _currentPage) {
      _navigatorKeys[tabItem]!.currentState!.popUntil((route) => route.isFirst);
    } else {
      setState(() {
        _currentPage = pageKeys[index];
        _selectedIndex = index;
      });
    }
  }

  void showModalDialog(
    BuildContext context,
  ) {
    showModalBottomSheet(
      backgroundColor: const Color.fromARGB(255, 20, 36, 76),
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: getScreenHeight(context) * 0.25,
          width: getScreenWidth(context),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: const Color.fromARGB(255, 20, 36, 76),
          ),
          child: LayoutBuilder(builder: (context, constraints) {
            return Center(
              child: Container(
                height: constraints.maxHeight * 0.7,
                width: constraints.maxWidth * 0.9,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(65, 239, 239, 239)
                        .withOpacity(0.3),
                    borderRadius: BorderRadius.circular(20)),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 20),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              Navigator.of(context).pop();
                              _selectedIndex = 1;
                              _currentPage = pageKeys[_selectedIndex];
                            });
                          },
                          child: Row(
                            children: [
                              const Text(
                                "Notifications",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              const Spacer(),
                              SizedBox(
                                  width: 30,
                                  height: 30,
                                  child: Image.asset(
                                      "assets/images/more_notifications_icon.png")),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Divider(
                          height: 5,
                          color: Colors.grey[400],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 20),
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  Navigator.of(context).pop();

                                  _selectedIndex = 3;
                                  _currentPage = pageKeys[_selectedIndex];
                                });
                              },
                              child: const Text(
                                "Settings",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            const Spacer(),
                            SizedBox(
                                width: 30,
                                height: 30,
                                child: Image.asset(
                                    "assets/images/more_settings_icon.png")),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
        );
      },
    );
  }

  @override
  void initState() {
    super.initState();
    _selectPage("page1", _selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SignedInTabNavigator(
        navigatorKey: _navigatorKeys[_currentPage],
        tabItem: pageKeys[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 13,
        unselectedFontSize: 13,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        unselectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.w500,
          color: Color.fromARGB(255, 0, 0, 0),
        ),
        selectedLabelStyle: TextStyle(
          color: Theme.of(context).colorScheme.onBackground,
        ),
        onTap: (index) {
          if (index < 3) {
            _selectPage(pageKeys[index], index);
            return;
          }

          showModalDialog(context);
        },
        items: [
          BottomNavigationBarItem(
            activeIcon: SizedBox(
              width: 30,
              height: 40,
              child: Image.asset(
                "assets/images/head_active.png",
                fit: BoxFit.contain,
              ),
            ),
            icon: SizedBox(
              width: 30,
              height: 40,
              child: Image.asset(
                "assets/images/head_inactive.png",
                fit: BoxFit.contain,
              ),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            activeIcon: SizedBox(
              width: 30,
              height: 40,
              child: Image.asset(
                "assets/images/active_profile.png",
                fit: BoxFit.contain,
              ),
            ),
            icon: SizedBox(
              width: 30,
              height: 40,
              child: Image.asset(
                "assets/images/inactive_profile.png",
                fit: BoxFit.contain,
              ),
            ),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
              activeIcon: SizedBox(
                width: 30,
                height: 40,
                child: Image.asset(
                  AppImages.chat_icon_nav_bar,
                  fit: BoxFit.contain,
                ),
              ),
              icon: SizedBox(
                width: 30,
                height: 40,
                child: Image.asset(
                  "assets/images/inactive_chat.png",
                  fit: BoxFit.contain,
                ),
              ),
              label: 'Request'),
          BottomNavigationBarItem(
            activeIcon: SizedBox(
              width: 30,
              height: 40,
              child: Image.asset(
                "assets/images/active_more.png",
                fit: BoxFit.contain,
              ),
            ),
            icon: SizedBox(
              width: 30,
              height: 40,
              child: Image.asset(
                "assets/images/inactive_more.png",
                fit: BoxFit.contain,
              ),
            ),
            label: 'More',
          ),
        ],
      ),
    );
  }
}
