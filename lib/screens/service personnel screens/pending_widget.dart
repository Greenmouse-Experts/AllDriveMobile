import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:roadside_heroes_app/constants.dart';
import 'package:roadside_heroes_app/screens/user%20screens/images_data.dart';

class PendingWidget extends StatelessWidget {
  final BoxConstraints constraints;
  final String request;
  final String address;
  const PendingWidget(
      {super.key,
      required this.constraints,
      required this.request,
      required this.address});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Color.fromRGBO(239, 240, 242, 1),
                    borderRadius: BorderRadius.circular(10)),
                width: constraints.maxWidth * 0.15,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Image.asset(
                    AppImages.pendingImages[request]!,
                  ),
                ),
              ),
              SizedBox(width: constraints.maxWidth * 0.05),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AutoSizeText(
                      request,
                      minFontSize: 18,
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.onBackground,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      width: constraints.maxWidth * 0.5,
                      child: AutoSizeText(
                        address,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: TextStyle(
                          color: Color.fromRGBO(23, 39, 72, 0.7),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        addHeight(20),
      ],
    );
  }
}
