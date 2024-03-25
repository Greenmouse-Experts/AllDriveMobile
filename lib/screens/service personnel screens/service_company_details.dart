import 'package:flutter/material.dart';
import 'package:roadside_heroes_app/constants.dart';

class ServiceCompanyDetails extends StatelessWidget {
  const ServiceCompanyDetails({super.key});

  static const containerColor = Color.fromRGBO(239, 240, 242, 1);
  static const dividerColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Service Company",
        ),
      ),
      body: LayoutBuilder(builder: (context, bodyConstraint) {
        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Container(
                    width: bodyConstraint.maxWidth,
                    height: bodyConstraint.maxHeight * 0.15,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: containerColor),
                    child: LayoutBuilder(
                      builder: (context, containerConstraints) {
                        return Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: containerConstraints.maxWidth * 0.15,
                              child: Image.asset("assets/images/Ellipse 1525.png"),
                            ),
                            addWidth(10),
                           Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Company Logo",
                                  style: TextStyle(
                                      color: Color.fromRGBO(23, 39, 72, 0.7),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                                Text("JPG.AC001",
                                    style: TextStyle(
                                        color: Theme.of(context).colorScheme.onBackground,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18)),
                              ],
                            )
                          ],
                        );
                      },
                    ),
                  ),
                ),
                addHeight(bodyConstraint.maxHeight * 0.03),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(20)),
                    child: LayoutBuilder(builder: (context, constraints) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Company Name",
                            style: TextStyle(
                              color: Color.fromRGBO(23, 39, 72, 0.7),
                              fontSize: 15,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Text(
                              "Auto Care",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                  color:
                                      Theme.of(context).colorScheme.onBackground),
                            ),
                          ),
                         Padding(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: pageDivider(thickeness: 2,color: dividerColor),
                          ),
                          const Text(
                            "Company Address",
                            style: TextStyle(
                              color: Color.fromRGBO(23, 39, 72, 0.7),
                              fontSize: 15,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Text(
                              "Cedar St. Suites 5 Birchmount Road",
                                style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                  color:
                                      Theme.of(context).colorScheme.onBackground),
                            ),
                          ),
                            Padding(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: pageDivider(thickeness: 2,color: dividerColor),
                          ),
                        
                          const Text(
                            "Company Email",
                            style: TextStyle(
                              color: Color.fromRGBO(23, 39, 72, 0.7),
                              fontSize: 15,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Text(
                              "autocare@gmail.com",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                  color:
                                      Theme.of(context).colorScheme.onBackground),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: pageDivider(thickeness: 2,color: dividerColor),
                          ),
                          const Text(
                            "Company Telephone Line",
                            style: TextStyle(
                              color: Color.fromRGBO(23, 39, 72, 0.7),
                              fontSize: 15,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10, bottom: 10),
                            child: Text(
                              "+1 000 000 0000",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                  color:
                                      Theme.of(context).colorScheme.onBackground),
                            ),
                          ),
                            Padding(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: pageDivider(thickeness: 2,color: dividerColor),
                          ),
                           const Text(
                            "City",
                            style: TextStyle(
                              color: Color.fromRGBO(23, 39, 72, 0.7),
                              fontSize: 15,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Text(
                              "Toronto",
                               style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                  color:
                                      Theme.of(context).colorScheme.onBackground),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: pageDivider(thickeness: 2,color: dividerColor),
                          ),
                           const Text(
                            "State",
                            style: TextStyle(
                              color: Color.fromRGBO(23, 39, 72, 0.7),
                              fontSize: 15,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10, bottom: 10),
                            child: Text(
                              "Ontario",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                  color:
                                      Theme.of(context).colorScheme.onBackground),
                            ),
                          ),
                            
                          
                        ],
                      );
                    }),
                  ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
