import 'package:flutter/material.dart';
import 'package:roadside_heroes_app/constants.dart';

class AdWidget extends StatefulWidget {
  const AdWidget({Key? key}) : super(key: key);

  @override
  State<AdWidget> createState() => _AdWidgetState();
}

class _AdWidgetState extends State<AdWidget>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.centerLeft,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child:
              Container(child: Image.asset("assets/images/ad_background.png")),
        ),
        Positioned(
          left: 20,
          top: 20,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Get assistance requests from\n"
                "distressed motorists",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 13),
              ),
              addHeight(5),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                      // Add border side here
                    ),
                    minimumSize: const Size(100, 30)),
                child: const Text(
                  "Learn more",
                  style: TextStyle(
                    color: Color.fromARGB(255, 20, 36, 76),
                    fontWeight: FontWeight.w900,
                    fontSize: 13,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
