import 'package:flutter/material.dart';
import 'package:roadside_heroes_app/screens/service%20personnel%20screens/pending_widget.dart';
import 'package:roadside_heroes_app/screens/service%20personnel%20screens/widgets/request_servicepersonnel.dart';

class StackOver extends StatefulWidget {
  final BoxConstraints constraints;
  const StackOver({super.key, required this.constraints});

  @override
  State<StackOver> createState() => _StackOverState();
}

class _StackOverState extends State<StackOver>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.constraints.maxWidth * 0.9,
      height: widget.constraints.maxHeight * 0.5,
      child: Column(
        children: [
          // give the tab bar a height [can change hheight to preferred height]
          Container(
            height: 60,
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.onBackground,
                borderRadius: BorderRadius.circular(
                  25.0,
                ),
                border: const Border(bottom: BorderSide.none)),
            child: TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorPadding:
                  const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              controller: _tabController,
              // give the indicator a decoration (color and border radius)
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  25.0,
                ),
                color: Colors.white,
              ),
              labelColor: Theme.of(context).colorScheme.onBackground,
              unselectedLabelColor: Colors.white,
              tabs: const [
                Tab(
                  child: Text(
                    "Requests",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ),
                Tab(
                  child: Text(
                    "Pending",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ),
              ],
            ),
          ),
          // tab bar view here
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 20,
              ),
              child: TabBarView(
                controller: _tabController,
                children: [
                  // first tab bar view widget
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        ServicePersonnelRequestScreen(
                          request: "Car Repair",
                          address: "10 Canlish Road . 10 GuildWood Parkwat",
                          constraints: widget.constraints,
                        ),
                        ServicePersonnelRequestScreen(
                          request: "Car Repair",
                          address: "10 Canlish Road . 10 GuildWood Parkwat",
                          constraints: widget.constraints,
                        ),
                        ServicePersonnelRequestScreen(
                          request: "Car Repair",
                          address: "10 Canlish Road . 10 GuildWood Parkwat",
                          constraints: widget.constraints,
                        ),
                        ServicePersonnelRequestScreen(
                          request: "Car Repair",
                          address: "10 Canlish Road . 10 GuildWood Parkwat",
                          constraints: widget.constraints,
                        ),
                        ServicePersonnelRequestScreen(
                          request: "Car Repair",
                          address: "10 Canlish Road . 10 GuildWood Parkwat",
                          constraints: widget.constraints,
                        ),
                      ],
                    ),
                  ),

                  // second tab bar view widget
                  const SingleChildScrollView(
                      child: Column(
                    children: [PendingWidget()],
                  )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
