import 'package:flutter/material.dart';
import 'package:master/views/screens/nav_bar/nav_bar_screens/profile_screens/profile_screen.dart';
import 'nav_bar_screens/categories_screen.dart';
import 'nav_bar_screens/home_screen.dart';
import 'nav_bar_screens/settings_screen.dart';

class MainNavBar extends StatefulWidget {
  const MainNavBar({Key? key}) : super(key: key);
  static String mainNavBarRoute = 'mainNavBarRoute';

  @override
  State<MainNavBar> createState() => _MainNavBarState();
}

class _MainNavBarState extends State<MainNavBar> {
  int currentScreenIndex = 0;
  List<Widget> screens = [
    HomeScreen(),
    CategoriesScreen(),
    ProfileScreen(),
    SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentScreenIndex],
      bottomNavigationBar: NavigationBar(
        animationDuration: const Duration(milliseconds: 1000),
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.category),
            label: 'Categories',
          ),
          NavigationDestination(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          NavigationDestination(
            icon: Icon(Icons.settings_rounded),
            label: 'Settings',
          ),
        ],
        onDestinationSelected: (int index) {
          setState(() {
            currentScreenIndex = index;
          });
        },
        selectedIndex: currentScreenIndex,
        backgroundColor: Colors.white,
        elevation: 10,
        surfaceTintColor: Colors.lime,
        //height: 40,
        labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
      ),
    );
  }
}
