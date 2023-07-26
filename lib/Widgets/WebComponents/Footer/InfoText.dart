import 'package:flutter/material.dart';

import '../../../Values/ResponsiveApp.dart';

class InfoText extends StatelessWidget {
  late ResponsiveApp responsiveApp;
  final String type;
  final String text;

  InfoText({super.key, required this.type, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text('$type: ',
            style: TextStyle(
                color: Colors.blueGrey[300],
                fontSize: responsiveApp
                    .bodyText1) //Theme.of(context).accentTextTheme.bodyText2,
            ),
        Flexible(
          child: Text(text,
              style: TextStyle(
                  color: Colors.blueGrey[100],
                  fontSize: responsiveApp
                      .bodyText1) //Theme.of(context).accentTextTheme.bodyText1,
              ),
        )
      ],
    );
  }
}
