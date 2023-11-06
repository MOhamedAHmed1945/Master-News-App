// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
class CustomCartProfile extends StatelessWidget {
  CustomCartProfile({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);
  IconData icon;
  String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.blue[300],
              radius: 25,
              child: Icon(
                icon,
                size: 30,
                color: Colors.white,
              ),
            ),
            SizedBox(width: 20),
            Expanded(
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 27.5,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                  letterSpacing: 2,

                ),

              ),
            ),
          ],
        ),
        SizedBox(height: 15),
        Divider(
          color: Colors.blue,
          thickness: 2,
          height: 5,
        ),
        SizedBox(height: 15),
      ],
    );
  }
}
