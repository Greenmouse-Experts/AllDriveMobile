import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import 'package:roadside_heroes_app/screens/user%20screens/images_data.dart';

class AboutApp extends StatelessWidget {
  const AboutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ABOUT US"),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: LayoutBuilder(builder: (context, constraint) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: SizedBox(
                  width: constraint.maxWidth * 0.7,
                  height: constraint.maxHeight * 0.2,
                  child: Image.asset(
                    AppImages.appLogoForWhiteBackground,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              SizedBox(height: constraint.maxHeight * 0.03),
              AutoSizeText(
                "Never Get Stranded Again!",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Theme.of(context).colorScheme.onBackground,
                ),
                softWrap: true,
              ),
              SizedBox(height: constraint.maxHeight * 0.02),
              AutoSizeText(
                "We are your trusted partner on the journey, offering prompt and reliable services to drivers in need. From towing and jump starts to tire changes and fuel delivery, our skilled team is committed to getting you back on the road swiftly and safely.",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Theme.of(context).colorScheme.onBackground,
                ),
                softWrap: true,
              ),
              SizedBox(height: constraint.maxHeight * 0.03),
              AutoSizeText(
                "No hidden fees",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Theme.of(context).colorScheme.onBackground,
                ),
                softWrap: true,
              ),
              SizedBox(height: constraint.maxHeight * 0.02),
              AutoSizeText(
                "Our commitment to straightforward pricing ensures you only pay for the services you need, with clarity and honesty every step of the way.",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Theme.of(context).colorScheme.onBackground,
                ),
                softWrap: true,
              ),
              SizedBox(height: constraint.maxHeight * 0.03),
              AutoSizeText(
                "Fast, safe and affordable",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Theme.of(context).colorScheme.onBackground,
                ),
                softWrap: true,
              ),
              SizedBox(height: constraint.maxHeight * 0.02),
              AutoSizeText(
                "We provide affordable, friendly, and reliable road assistance services to road users and on time.\nRequest instant roadside assistance now! Choose through the provided options, the problem you're having and we'll be there in minutes.",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Theme.of(context).colorScheme.onBackground,
                ),
                softWrap: true,
              ),
            ],
          );
        }),
      ),
    );
  }
}
