// ignore_for_file: file_names

import 'package:flutter/material.dart';

class CustomListTileSettingsScreen extends StatelessWidget {
  const CustomListTileSettingsScreen({
    Key? key,
    required this.leadingIcon,
    required this.title,
    required this.onPressed,
    required this.trailingIcon,
  }) : super(key: key);
  final IconData leadingIcon;
  final String title;
  final VoidCallback onPressed;
  final IconData trailingIcon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(leadingIcon),
      title: Text(title),
      trailing: IconButton(
        onPressed: onPressed,
        icon: Icon(trailingIcon),
      ),
    );
  }
}

class CustomListTileSwitchSettingsScreen extends StatelessWidget {
  const CustomListTileSwitchSettingsScreen({
    Key? key,
    required this.leadingIcon,
    required this.title,
    required this.trailingSwitch,
  }) : super(key: key);
  final IconData leadingIcon;
  final String title;
  final Widget trailingSwitch;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(leadingIcon),
      title: Text(title),
      trailing: trailingSwitch,
    );
  }
}
