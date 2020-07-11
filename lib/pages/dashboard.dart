import 'package:flutter/material.dart';
import 'package:invoice/utils/color_converter.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("F2F2F2"),
      body: ListView(
        children: <Widget>[
          Stack(
            overflow: Overflow.visible,
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 250.0,
                decoration: BoxDecoration(
                  color: HexColor("5B50F2"),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(18),
                    bottomRight: Radius.circular(18),
                  ),
                ),
              ),
              Flex(
                direction: Axis.horizontal,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: Text(
                      "Dashboard",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
              Positioned(
                top: 85,
                left: 30,
                child: Material(
                  color: Colors.white,
                  elevation: 3.0,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  child: Container(
                    width: 360.0,
                    height: 280.0,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
