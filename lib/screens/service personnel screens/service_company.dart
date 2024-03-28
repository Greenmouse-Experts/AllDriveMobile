import 'package:flutter/material.dart';
import 'package:roadside_heroes_app/constants.dart';
import 'package:roadside_heroes_app/screens/service%20personnel%20screens/service_company_details.dart';

class ServiceCompany extends StatelessWidget {
  const ServiceCompany({super.key});

  Widget serviceCompanyContainer(String imagePath, String companyName,
      String address, String dateJoined, BuildContext context, BoxConstraints pageConstraints) {
    return GestureDetector(
      onTap: () {
        moveTo(const ServiceCompanyDetails(), context);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Container(
          width: pageConstraints.maxWidth,
          height: pageConstraints.maxHeight * 0.2,
        
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Theme.of(context).colorScheme.onBackground),
          child: LayoutBuilder(
            builder: (context, constraints) {
              return Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: constraints.maxWidth * 0.15,
                        child: Image.asset(imagePath),
                      ),
                      addWidth(10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(companyName,style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
                          Text(address,style: const TextStyle(color: Color.fromRGBO(235, 235, 245, 0.6),fontWeight: FontWeight.w500,fontSize: 15)),
                        ],
                      )
                    ],
                  ),
                  addHeight(constraints.maxHeight * 0.2),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [Text("Date Joined :$dateJoined",style: const TextStyle(color: Color.fromRGBO(235, 235, 245, 0.6)),)],
                  )
                ],
              );
            }
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Service Company",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: 

             LayoutBuilder(
               builder: (context, pageConstraints) {
                 return Column(
                  children: [
                    serviceCompanyContainer("assets/images/Ellipse 1525.png", "AutoCare", "CEDAR ST. SUITE 5 BIRCHMOUNT RD", "23rd January, 2024", context, pageConstraints),
                      serviceCompanyContainer("assets/images/Ellipse 1525.png", "AutoCare", "CEDAR ST. SUITE 5 BIRCHMOUNT RD", "23rd January, 2024", context, pageConstraints)
                  ],
                             );
               }
             ),
          
        
      ),
    );
  }
}
