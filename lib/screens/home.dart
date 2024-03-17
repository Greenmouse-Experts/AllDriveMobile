import 'package:flutter/material.dart';
import 'package:roadside_heroes_app/routes/tab_navigator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 200,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: const Color.fromARGB(255, 20, 36, 76),
          ),
          child: Center(
            child: Container(
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 134, 132, 132).withOpacity(0.5),
                  borderRadius: BorderRadius.circular(20)),
              width: 300,
              height: 150,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: Row(
                        children: [
                          const Text(
                            "Notifications",
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                          const Spacer(),
                          Container(
                              width: 30,
                              height: 30,
                              child: Image.asset(
                                  "assets/images/more_notifications_icon.png")),
                        ],
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
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          const Text(
                            "Settings",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                          const Spacer(),
                          Container(
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
          ),
        );
      },
    );
  }

  @override
  void initState() {
    super.initState();
    _selectPage("page1", _selectedIndex);
  }

  Widget _buildOffStageWidgetIndicator(String tabItem) {
    return Offstage(
      offstage: _currentPage != tabItem,
      child: TabNavigator(
        navigatorKey: _navigatorKeys[tabItem],
        tabItem: pageKeys[_selectedIndex],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (bool didPop) async {
        final isRouteinCurrentTab =
            !await _navigatorKeys[_currentPage]!.currentState!.maybePop();
        if (!isRouteinCurrentTab && _currentPage != "page1") {
          _selectPage("page1", 0);
        }
      },
      child: Scaffold(
        body: TabNavigator(
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
            _selectPage(pageKeys[index], index);
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
                    "assets/images/active_profile.png",
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
      ),
    );
  }
}
