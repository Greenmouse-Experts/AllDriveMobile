import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:roadside_heroes_app/constants.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height:70 ,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),
                  color: Color(0xFFFCEFE2),
                   // Use the hexadecimal color value here
    ),
    child: Row(
      children: [
        Padding(
    padding: const EdgeInsets.symmetric(horizontal: 5),
    child: Container(
        width: 54,
      height: 54,
      decoration:BoxDecoration(borderRadius: BorderRadius.circular(40),
                      color: Color(0xFFEB963F),
                       // Use the hexadecimal color value here
    ),
    
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 9),
          child: Container(
               width: 25,
                    height: 30,
            child: Image.asset("assets/images/appbar_image.png",fit: BoxFit.contain,)),
        ),
      )),
        ),
     addWidth(10),
    Text("Good morning, Dwaelo",style: TextStyle(fontSize: 15,color: Color(0xFF172748),
    fontWeight: FontWeight.bold),)
      ],
    ),
    );
  }
}