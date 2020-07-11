import 'package:flutter/material.dart';
import 'package:invoice/utils/color_converter.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

class CardsComponent extends StatefulWidget {
  @override
  _CardsComponentState createState() => _CardsComponentState();
}

class _CardsComponentState extends State<CardsComponent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(top: 50.0),
        child: Flex(
          direction: Axis.vertical,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Hello, Emeka"),
                Icon(LineAwesomeIcons.user, color: HexColor("9BA1B1"),)
                
              ],
            )
          ],
        ),
      ),
    );
  }
}
