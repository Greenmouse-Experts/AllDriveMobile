import 'package:flutter/material.dart';
import 'package:roadside_heroes_app/screens/user%20screens/ad_widget_data.dart';

class AdWidget extends StatefulWidget {
  const AdWidget({Key? key}) : super(key: key);

  @override
  State<AdWidget> createState() => _AdWidgetState();
}

class _AdWidgetState extends State<AdWidget> with SingleTickerProviderStateMixin {
  int currentIndex = 0;

  late AnimationController _animationController;
  late PageController _controller;

  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300), // Adjust duration as needed
    );
    _animation = Tween<double>(
      begin: 0.0,
      end: 0.0,
    ).animate(_animationController);
    _controller = PageController(initialPage: 0);
    _controller.addListener(() {
      getControllerValue(_controller.page?.toInt() ?? 0);
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void getControllerValue(int index) {
    double newValue = (index + 1) / ad_contents.length;

    // Ensure that the value is clamped between 0 and 1
    newValue = newValue.clamp(0.0, 1.0);

    // Animate to the new value
    _animation = Tween<double>(
      begin: _animation.value,
      end: newValue,
    ).animate(_animationController)
      ..addListener(() {
        setState(() {}); // Trigger a rebuild on every animation frame
      });

    // Start the animation
    _animationController.reset();
    _animationController.forward();
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 150,
      color: Theme.of(context).colorScheme.onBackground,
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Stack(
            alignment: Alignment.topRight,
            children: [
              PageView.builder(
                controller: _controller,
                itemCount: ad_contents.length,
                itemBuilder: (context, index) {
                  return Container(
                    // Replace this with your actual ad widget
                  );
                },
              ),
              Positioned(
                left: 20,
                right: 20,
                top: 60,
                child: Container(
                  width: constraints.maxWidth * 0.7,
                  child: Image.asset("assets/images/advert_here.png"),)),
                  Positioned(
                left: 20,
                right: 20,
                child: Container(
                  width: constraints.maxWidth * 0.7,
                  height: constraints.maxHeight ,
                  child: Image.asset("assets/images/taxi.png",fit: BoxFit.contain,),)),
              Positioned(
                bottom: 20,
                left: 370,
                right: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    ad_contents.length,
                    (index) => buildDot(index, context),
                  ),
                ),
              ),
              const Positioned(
                right: 20,
                top: 20,
                child: Text("Ad",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),))

            ],
          );
        },
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width:  10,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: currentIndex == index
            ? Colors.white
            : Colors.grey.withOpacity(0.3),
      ),
    );
  }
}
