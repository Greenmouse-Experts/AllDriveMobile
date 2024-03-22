import 'dart:async';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:roadside_heroes_app/constants.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

typedef TimerFinishedCallback = void Function();

class CounterWidget extends StatefulWidget {
  final TimerFinishedCallback onTimerFinished;

  const CounterWidget({Key? key, required this.onTimerFinished})
      : super(key: key);

  @override
  _CounterWidgetState createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  late double progressValue;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    progressValue = 10;
    startCountdown();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  void startCountdown() {
    const duration = Duration(seconds: 1);
    _timer = Timer.periodic(duration, (timer) {
      setState(() {
        if (progressValue > 0) {
          progressValue -= 1; // Reduce progress by 1 every second
        } else {
          timer.cancel(); // Stop the timer when progress reaches 0
          widget.onTimerFinished(); // Callback when timer finishes
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SfRadialGauge(axes: <RadialAxis>[
          RadialAxis(
            minimum: 0,
            maximum: 10,
            showLabels: false,
            showTicks: false,
            axisLineStyle: const AxisLineStyle(
              thickness: 0.08,
              cornerStyle: CornerStyle.bothCurve,
              color: Colors.white,
              thicknessUnit: GaugeSizeUnit.factor,
            ),
            pointers: <GaugePointer>[
              RangePointer(
                value: progressValue,
                cornerStyle: CornerStyle.bothCurve,
                width: 0.1,
                sizeUnit: GaugeSizeUnit.factor,
              )
            ],
            annotations: <GaugeAnnotation>[
              GaugeAnnotation(
                positionFactor: 0.1,
                angle: 180,
                widget: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AutoSizeText(
                        progressValue.toStringAsFixed(0),
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                        minFontSize: 40,
                      ),
                      addHeight(10),
                      const AutoSizeText(
                        "Seconds",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        minFontSize: 30,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ]),
      ],
    );
  }
}
