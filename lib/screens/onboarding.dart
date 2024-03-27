import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:roadside_heroes_app/routes/app_routes_path.dart';
import 'package:roadside_heroes_app/screens/onboarding_data.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding>
    with SingleTickerProviderStateMixin {
  int currentIndex = 0;
  late AnimationController _animationController;
  late PageController _controller;

  late Animation<double> _animation;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300), // Adjust duration as needed
    );
    _animation = Tween<double>(
      begin: 0.0,
      end: 0.0,
    ).animate(_animationController);
    _controller = PageController(initialPage: 0);

    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void getControllerValue(int index) {
    double newValue = (index + 1) / contents.length;

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
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          double screenWidth = constraints.maxWidth;
          double screenHeight = constraints.maxHeight;
          bool isMobile = screenWidth < 600;

          return PageView.builder(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                currentIndex = index;
                getControllerValue(index);
              });
            },
            itemCount: contents.length,
            itemBuilder: (context, index) {
              return Stack(
                alignment: Alignment.topRight,
                children: [
                  Positioned.fill(
                    child: Image.asset(
                      contents[index].image,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: isMobile ? screenHeight * 0.57 : screenHeight * 0.57,
                    left: isMobile ? 20 : 30, // Adjust left padding for mobile
                    child: SafeArea(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            contents[index].description,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: isMobile ? 33 : 55,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                              height: isMobile
                                  ? screenHeight * 0.10
                                  : screenHeight * 0.10),
                          SizedBox(
                            width: screenWidth,
                            child: Row(
                              children: [
                                Row(
                                  children: List.generate(
                                    contents.length,
                                    (index) => buildDot(index, context),
                                  ),
                                ),
                                const Expanded(child: SizedBox()),
                                Padding(
                                  padding: const EdgeInsets.only(right: 50),
                                  child: GestureDetector(
                                    onTap: () {
                                      if (currentIndex == contents.length - 1) {
                                        context.pushReplacementNamed(
                                            AuthRoutes.viewOptions.name);
                                        return;
                                      }
                                      _controller.nextPage(
                                        duration:
                                            const Duration(milliseconds: 200),
                                        curve: Curves.fastOutSlowIn,
                                      );
                                    },
                                    child: Stack(
                                      children: [
                                        Positioned.fill(
                                          child: CircularProgressIndicator(
                                            strokeAlign:
                                                BorderSide.strokeAlignOutside,
                                            value: _animation.value == 0.0
                                                ? 0.3
                                                : _animation.value,
                                            color: index == 2
                                                ? Colors.green
                                                : Colors.white,
                                          ),
                                        ),
                                        Positioned.fill(
                                          child: CircularProgressIndicator(
                                            value: 1.0,
                                            color: Colors.grey.withOpacity(0.3),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            height: isMobile ? 50 : 80,
                                            width: isMobile ? 50 : 80,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(40),
                                            ),
                                            child: const Icon(
                                              Icons.arrow_forward_ios,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: TextButton(
                        onPressed: () {
                          context.pushReplacementNamed(
                              AuthRoutes.viewOptions.name);
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: isMobile ? 10 : 12,
                              vertical: isMobile ? 2 : 2),
                          child: const Text(
                            "Skip",
                            style: TextStyle(
                              color: Color.fromARGB(255, 8, 4, 71),
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: currentIndex == index ? 25 : 10,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color:
            currentIndex == index ? Colors.white : Colors.grey.withOpacity(0.3),
      ),
    );
  }
}
