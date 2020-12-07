import 'package:flutter/cupertino.dart';
import 'constants.dart';


const iconSize = 80.0;

class IconContent extends StatelessWidget {
  IconContent({@required this.iconData, this.text});

  final IconData iconData;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          iconData,
          size: iconSize,
        ),
        SizedBox(),
        Text(
          text,
          style: kTextStyle,
        )
      ],
    );
  }
}
