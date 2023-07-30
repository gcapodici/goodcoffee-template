import 'package:flutter/material.dart';

import '../../../../Values/ResponsiveApp.dart';

class SectionContainer extends StatelessWidget {
  SectionContainer({
    Key? key,
    required this.title,
    required this.subTitle,
    this.color,
  }) : super(key: key);

  final String title, subTitle;
  final Color? color;
  late ResponsiveApp responsiveApp;
  @override
  Widget build(BuildContext context) {
    responsiveApp = ResponsiveApp(context);
    return Container(
      width: responsiveApp.width,
      child: Row(
        children: [
          Container(
            margin: responsiveApp.edgeInsetsApp.onlyMediumRightEdgeInsets,
            padding: responsiveApp.edgeInsetsApp.onlyLargeBottomEdgeInsets,
            width: responsiveApp.sectionWidth,
            height: responsiveApp.sectionHeight,
            color: Colors.black,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: color,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                subTitle,
                style: TextStyle(
                    color: Colors.blueGrey[100],
                    fontSize: responsiveApp.bodyText1),
              ),
              Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .displayMedium!
                    .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
              )
            ],
          )
        ],
      ),
    );
  }
}
