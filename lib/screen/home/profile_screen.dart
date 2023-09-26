import 'package:flutter/material.dart';
import 'package:keymerce/theme.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor1,
      body: Center(
        child: Text(
          'ProfileScreen',
          style: primaryTextStyle,
        ),
      ),
    );
  }
}
