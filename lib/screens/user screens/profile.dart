import 'package:flutter/material.dart';
import 'package:roadside_heroes_app/screens/user%20screens/nav_bar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            children: [
              Row(
                children: [
                  Text("My Requests"),
                  const Spacer(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
