import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:roadside_heroes_app/constants.dart';
import 'package:roadside_heroes_app/screens/user%20screens/images_data.dart';

class ServicePersonnelRequestWidget extends StatelessWidget {
  final String request;
  final String address;
  final BoxConstraints constraints;

  const ServicePersonnelRequestWidget({
    Key? key,
    required this.request,
    required this.address,
    required this.constraints,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: constraints.maxWidth * 0.1,
              child: Image.asset(AppImages.servicePersonnelRequestWidgetIcon),
            ),
            SizedBox(width: constraints.maxWidth * 0.02),
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
                        fontWeight: FontWeight.w600),
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
            SizedBox(width: constraints.maxWidth * 0.1),
            Icon(
              Icons.more_vert,
              size: 30,
            ),
          ],
        ),
        addHeight(20),
      ],
    );
  }
}
