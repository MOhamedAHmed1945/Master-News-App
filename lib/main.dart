// ignore_for_file: use_key_in_widget_constructors
import 'package:master/helper/hive_function_box.dart';
import 'package:master/models/model_provider.dart';
import 'package:master/views/screens/intro_screen.dart';
import 'package:master/views/screens/nav_bar/nav_bar_screens/home_screen.dart';
import 'package:master/views/screens/nav_bar/main_navbar.dart';
import 'package:master/views/screens/nav_bar/nav_bar_screens/profile_screens/edit_profile_screen.dart';
import 'package:provider/provider.dart';
import 'views/screens/nav_bar/nav_bar_screens/categories_screen.dart';
import 'package:flutter/material.dart';
import 'views/screens/nav_bar/nav_bar_screens/profile_screens/profile_screen.dart';
import 'views/screens/nav_bar/nav_bar_screens/settings_screen.dart';

void main() async {
  await HiveFunctionBox.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ModelProvider(),
      child: Builder(
        builder: (context) {
          final modelProvider = context.watch<ModelProvider>();
          final isDarkModeEnabled = modelProvider.isDarkModeEnabled;
          // final darkModelProvider = context.watch<DarkModelProvider>();
          //  final isDarkModeEnabled = darkModelProvider.isDarkModeEnabled;
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'News App',
            theme: isDarkModeEnabled ? ThemeData.dark() : ThemeData.light(),
            home: IntroScreen(),
            routes: {
              IntroScreen.introRoute: (context) => const IntroScreen(),
              MainNavBar.mainNavBarRoute: (context) => const MainNavBar(),
              HomeScreen.homeRoute: (context) => const HomeScreen(),
              EditeProfileScreen.editeProfileRoute: (context) =>
                  EditeProfileScreen(),
              ProfileScreen.profileRoute: (context) => ProfileScreen(),
              CategoriesScreen.categoriesScreenRoute: (context) =>
                  CategoriesScreen(),
              SettingsScreen.settingsScreenRoute: (context) => SettingsScreen(),
              // DecorationCategoriesScreen.decorationCategoriesScreenRoute: (context) =>
              // DecorationCategoriesScreen(),
            },
          );
        },
      ),
    );
  }
}
