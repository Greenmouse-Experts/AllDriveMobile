import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:roadside_heroes_app/constants.dart';

class FaqScreen extends StatefulWidget {
  const FaqScreen({super.key});
  static const List<String> _headers = [
    "What roadside assistance services do you provide?",
    "How do I request a roadside assistance service?",
    "How do i get charged for my road assitance?",
    "How long will it take to get help?",
    "Should i tip my road assistance providers",
    "Do i need Auto Insurance to use AllDrive SOS?",
    "Can i cancel a pending roadside assistance request and get a refund?",
    "Why isn't my refund full"
  ];
  static const List<String> _body = [
    "At AllDrive SOS, we offer comprehensive maintenance and emergency roadside assistance services for all motor vehicles. Our service list is continually expanding to meet your needs. For the most up-to-date list of services, please visit our services page [here](link to services page).",
    "Getting roadside assistance is simple! Just open the AllDrive SOS app or visit our website. Select the service you need, fill out the quick request form, and we'll connect you with nearby service providers ready to assist you. These providers will then send you quotes and their locations so you can choose your preferred option. Once you've confirmed and paid, you can track the technician's progress on their way to you.",
    "Our pricing is transparent and follows a cost-efficient pay-as-you-go model, ensuring you save money without worrying about membership fees or monthly subscriptions. Pricing varies based on factors such as service type, location, and time of day.",
    "For a faster response, make sure your location services are enabled on your device. This helps us find service providers closest to you. When you request a service, you'll be able to choose a nearby provider and see their estimated arrival time.",
    "While tipping roadside assistance providers is not mandatory in the US, it's a common way to show appreciation for good service, especially during inconvenient times or challenging tasks. Tipping is an individual decision but is always appreciated for exceptional work.",
    "No! AllDrive SOS offers a convenient pay-as-you-go option. However, if your Auto insurance covers roadside assistance, we will provide you with a payment receipt via email to help you claim reimbursement from your insurance company.",
    "We aim to fulfill every roadside assistance request promptly and professionally. However, if you need to cancel a pending request, you can do so and receive a refund, subject to a 15% service charge deduction.",
    "We use secure third-party processors for all transactions, including banks and payment gateways. These institutions may charge fees for processing refunds, which is why a small service fee applies."
  ];

  @override
  State<FaqScreen> createState() => _FaqScreenState();
}

class _FaqScreenState extends State<FaqScreen> {
  final List<Item> _items = List<Item>.generate(
      8,
      (index) => Item(
          headerText: FaqScreen._headers[index],
          expandedText: FaqScreen._body[index]));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        title: const Text("FAQ"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              AutoSizeText.rich(TextSpan(
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.onBackground,
                      fontSize: 16),
                  text:
                      "We've got you covered, mile after mile! Here are some frequently asked questions to help you get the most out of AllDrive SOS:")),
              addHeight(15),
              ExpansionPanelList(
                expansionCallback: (panelIndex, isExpanded) {
                  setState(() {
                    _items[panelIndex].isexpanded = isExpanded;
                  });
                },
                children: _items
                    .map((Item item) => ExpansionPanel(
                        backgroundColor: Colors.grey[200],
                        isExpanded: item.isexpanded,
                        headerBuilder: (context, isExpanded) => ListTile(
                                title: Text(
                              item.headerText,
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onBackground,
                                  fontSize: 15),
                            )),
                        body: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 5),
                          child: Text(
                            item.expandedText,
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color:
                                    Theme.of(context).colorScheme.onBackground),
                          ),
                        )))
                    .toList(),
              ),
              addHeight(15),
              AutoSizeText.rich(
                TextSpan(
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.onBackground,
                        fontSize: 16),
                    text:
                        "We hope this helps! If you have any other questions, feel free to contact our friendly customer support team. We're always happy to assist you!"),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Item {
  final String headerText;
  final String expandedText;
  bool isexpanded;
  Item(
      {required this.headerText,
      required this.expandedText,
      this.isexpanded = false});
}
