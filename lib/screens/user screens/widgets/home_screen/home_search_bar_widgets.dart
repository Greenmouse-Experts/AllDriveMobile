import 'package:flutter/material.dart';
import 'package:roadside_heroes_app/constants.dart';

class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      child: SizedBox(
        height: 50,
        width: double.infinity,
        child: Row(
          children: [
            GestureDetector(
              onTap: () {},
              child: const Icon(
                Icons.search,
                size: 30,
              ),
            ),
            addWidth(20),
            const Expanded(
                child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Search Assistance',
              ),
            ))
          ],
        ),
      ),
    );
  }
}
