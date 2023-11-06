import 'package:flutter/material.dart';
import 'package:master/views/screens/nav_bar/main_navbar.dart';
import 'package:master/views/widgets/custom_app_bar_for_details_and_home_screen.dart';
import 'package:provider/provider.dart';

import '../../../../models/model_provider.dart';
import '../../../widgets/custom_listTile_settings_screen.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);
  static String settingsScreenRoute = 'settingsScreenRoute';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(75),
          child: CustomAppBarForDetailsAndHomeScreen(
            title: 'Settings',
            leading: IconButton(
              onPressed: () {
                Navigator.pushNamed(context, MainNavBar.mainNavBarRoute);
              },
              icon: Icon(
                Icons.arrow_back_ios,
                size: 32,
                color: Colors.black,
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 15.0),
                CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage('assets/images/jon.jpeg'),
                ),
                SizedBox(height: 16.0),
                Text(
                  'John Doe',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 32.0),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(height: 15.0),
                    Container(
                      height: 130.0,
                      width: MediaQuery.of(context).size.width - 32.0,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Card(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Column(
                            children: [
                              CustomListTileSwitchSettingsScreen(
                                leadingIcon: Icons.dark_mode,
                                title: 'Dark Mode',
                                trailingSwitch: Consumer<ModelProvider>(
                                  builder: (context, provider, child) {
                                    return Switch(
                                      value: provider.isDarkModeEnabled,
                                      onChanged: (value) {
                                        provider.toggleDarkMode(value);
                                      },
                                    );
                                  },
                                ),
                              ),
                              CustomListTileSwitchSettingsScreen(
                                leadingIcon: Icons.notification_add_sharp,
                                title: 'Notifications',
                                trailingSwitch: Switch(
                                  value: true,
                                  onChanged: (bool value) {},
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 15.0),
                    Container(
                      height: 130.0,
                      width: MediaQuery.of(context).size.width - 32.0,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Card(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Column(
                            children: [
                              CustomListTileSettingsScreen(
                                leadingIcon: Icons.language_sharp,
                                onPressed: () {},
                                title: 'Language',
                                trailingIcon: Icons.arrow_forward_ios_sharp,
                              ),
                              CustomListTileSettingsScreen(
                                leadingIcon: Icons.format_size,
                                onPressed: () {},
                                title: 'Text Size',
                                trailingIcon: Icons.arrow_forward_ios_sharp,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 15.0),
                    Container(
                      height: 130.0,
                      width: MediaQuery.of(context).size.width - 32.0,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Card(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Column(
                            children: [
                              CustomListTileSettingsScreen(
                                leadingIcon: Icons.email_outlined,
                                onPressed: () {},
                                title: 'Send a Message',
                                trailingIcon: Icons.arrow_forward_ios_sharp,
                              ),
                              CustomListTileSettingsScreen(
                                leadingIcon: Icons.privacy_tip,
                                onPressed: () {},
                                title: 'Security & Privacy',
                                trailingIcon: Icons.arrow_forward_ios_sharp,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 15.0),
                    Container(
                      height: 75.0,
                      width: MediaQuery.of(context).size.width - 32.0,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Card(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Column(
                            children: [
                              CustomListTileSettingsScreen(
                                leadingIcon: Icons.logout,
                                onPressed: () {},
                                title: 'Logout',
                                trailingIcon: Icons.arrow_forward_ios_sharp,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 5.0),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
