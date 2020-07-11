import 'package:flutter/material.dart';
import 'package:invoice/utils/color_converter.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 200.0,
                decoration: BoxDecoration(
                  color: HexColor("5B50F2"),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(8),
                      bottomRight: Radius.circular(8)),
                ),
              ),
              Text(
                "Dashboard",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
              
            ],
          )
        ],
      ),
    );
  }
}
