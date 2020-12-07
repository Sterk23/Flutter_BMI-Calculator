
import 'package:flutter/cupertino.dart';
const textStyle = TextStyle(fontSize: 18.0, color: Color(0xFF8D8E98));
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
          style: textStyle,
        )
      ],
    );
  }
}
