import 'package:flutter/material.dart';
import 'package:master/views/Widgets/custom_cart_profile.dart';

class CustomCaseValueProfileNull extends StatelessWidget {
  const CustomCaseValueProfileNull({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            children: [
              const SizedBox(height: 30),
              CustomCartProfile(
                icon: Icons.flag_outlined,
                text: 'User Name',
              ),
              CustomCartProfile(
                icon: Icons.flag_outlined,
                text: 'Email',
              ),
              CustomCartProfile(
                icon: Icons.phone_outlined,
                text: 'Phone Number',
              ),
              CustomCartProfile(
                icon: Icons.hdr_auto_sharp,
                text: 'Age',
              ),
              CustomCartProfile(
                icon: Icons.flag_outlined,
                text: 'Country',
              ),
              CustomCartProfile(
                icon: Icons.apartment_outlined,
                text: 'Address',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
