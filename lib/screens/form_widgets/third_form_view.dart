import 'package:flutter/material.dart';
import 'package:roadside_heroes_app/screens/user%20screens/widgets/counter_widget.dart';

class ThirdFormView extends StatefulWidget {
  const ThirdFormView({super.key});

  @override
  State<ThirdFormView> createState() => _ThirdFormViewState();
}

class _ThirdFormViewState extends State<ThirdFormView> {
  Widget body = CounterWidget();
  @override
  Widget build(BuildContext context) {
    return Column(children: [body],);
  }
}