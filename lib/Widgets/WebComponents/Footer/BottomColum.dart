import 'package:flutter/material.dart';

import '../../../Values/ResponsiveApp.dart';

class BottomColumn extends StatelessWidget {
  final String heading;
  final String s1;
  final String s2;
  final String s3;

  BottomColumn({
    required this.heading,
    required this.s1,
    required this.s2,
    required this.s3,
  });

  late ResponsiveApp responsiveApp;

  @override
  Widget build(BuildContext context) {
    responsiveApp = ResponsiveApp(context);
    return Padding(
      padding: responsiveApp.edgeInsetsApp.onlyLargeBottomEdgeInsets,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            heading,
            style: TextStyle(
                color: Colors.blueGrey[300], fontSize: responsiveApp.headline6),
          ),
          createS(s1, context),
          createS(s2, context),
          createS(s3, context)
        ],
      ),
    );
  }

  createS(String s, context) {
    return Padding(
        padding: responsiveApp.edgeInsetsApp.onlySmallTopEdgeInsets,
        child: Text(
          s,
          style: TextStyle(
              color: Colors.blueGrey[100], fontSize: responsiveApp.bodyText1),
        ));
  }
}
