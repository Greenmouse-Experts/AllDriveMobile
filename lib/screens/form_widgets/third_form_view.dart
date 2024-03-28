import 'package:flutter/material.dart';
import 'package:roadside_heroes_app/screens/form_widgets/counter_widget.dart';
import 'package:roadside_heroes_app/screens/user%20screens/widgets/service_provider_widget.dart';

class ThirdFormView extends StatefulWidget {
  const ThirdFormView({Key? key}) : super(key: key);

  @override
  State<ThirdFormView> createState() => _ThirdFormViewState();
}

class _ThirdFormViewState extends State<ThirdFormView> {
  late Widget body;

  @override
  void initState() {
    super.initState();
    body = CounterWidget(
      onTimerFinished: () {
        setState(() {
          body =
              ServiceProvidersWidget(); // Change body value when timer finishes
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        body,
      ],
    );
  }
}
