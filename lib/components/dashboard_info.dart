import 'package:flutter/material.dart';
import 'package:invoice/components/chart_component.dart';
import 'package:invoice/utils/color_converter.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

class DashboardInfoComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
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
                  padding: EdgeInsets.all(20),
                  child: Flex(
                    direction: Axis.vertical,
                    children: <Widget>[
                      Expanded(
                          child: Container(
                        child: ChartComponent(),
                      )),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Income",
                                  style: TextStyle(
                                      color: HexColor("5D6878"), fontSize: 14),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "\$12,300.40",
                                  style: TextStyle(
                                      color: HexColor("35B2A6"), fontSize: 18),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Spent",
                                  style: TextStyle(
                                      color: HexColor("5D6878"), fontSize: 14),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "\$6,420.00",
                                  style: TextStyle(
                                      color: HexColor("F96069"), fontSize: 18),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
        SizedBox(height: 130),
        Padding(
          padding: const EdgeInsets.all(15),
          child: Text(
            "TODAY, 11 JUL",
            style: TextStyle(
              color: Colors.grey.shade500,
              fontSize: 13,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Flex(
            direction: Axis.vertical,
            children: <Widget>[
              Flex(
                direction: Axis.horizontal,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        width: 50.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          color: HexColor("5B50F2"),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: RotatedBox(
                          quarterTurns: 3,
                          child: Icon(
                            LineAwesomeIcons.send,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Virgin Airlines",
                              style: TextStyle(
                                color: HexColor("1F2F45"),
                                fontSize: 17.5,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Buy Tickets",
                              style: TextStyle(
                                color: HexColor("9A9EA9"),
                                fontSize: 13,
                              ),
                            )
                          ])
                    ],
                  ),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          "- \$ 250.00",
                          style: TextStyle(
                            color: HexColor("F96069"),
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          "18:4",
                          style: TextStyle(
                            color: HexColor("BCBEC7"),
                            fontSize: 13,
                          ),
                        )
                      ])
                ],
              ),
              SizedBox(height: 20),
              Flex(
                direction: Axis.horizontal,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        width: 50.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          color: HexColor("4DBAB0"),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Icon(
                          LineAwesomeIcons.bank,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 10),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Bank Transfer",
                              style: TextStyle(
                                color: HexColor("1F2F45"),
                                fontSize: 17.5,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Transfer",
                              style: TextStyle(
                                color: HexColor("9A9EA9"),
                                fontSize: 13,
                              ),
                            )
                          ])
                    ],
                  ),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          "- \$ 12,500.00",
                          style: TextStyle(
                            color: HexColor("3EB6AA"),
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          "12:3",
                          style: TextStyle(
                            color: HexColor("BCBEC7"),
                            fontSize: 13,
                          ),
                        )
                      ])
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 30, left: 15, bottom: 15),
          child: Text(
            "YESTERDAY, 10 JUL",
            style: TextStyle(
              color: Colors.grey.shade500,
              fontSize: 13,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Flex(
            direction: Axis.vertical,
            children: <Widget>[
              Flex(
                direction: Axis.horizontal,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        width: 50.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          color: HexColor("FB6D75"),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Icon(
                          LineAwesomeIcons.credit_card,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 10),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Dribble",
                              style: TextStyle(
                                color: HexColor("1F2F45"),
                                fontSize: 17.5,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Payment Account",
                              style: TextStyle(
                                color: HexColor("9A9EA9"),
                                fontSize: 13,
                              ),
                            )
                          ])
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        "- \$ 15.00",
                        style: TextStyle(
                          color: HexColor("F96069"),
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        "20:1",
                        style: TextStyle(
                          color: HexColor("BCBEC7"),
                          fontSize: 13.2,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(height: 20),
              Flex(
                direction: Axis.horizontal,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        width: 50.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          color: HexColor("FFB642"),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Icon(
                          LineAwesomeIcons.backward,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 10),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Cashback",
                              style: TextStyle(
                                color: HexColor("1F2F45"),
                                fontSize: 17.5,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Reversal",
                              style: TextStyle(
                                color: HexColor("9A9EA9"),
                                fontSize: 13,
                              ),
                            )
                          ])
                    ],
                  ),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          "- \$ 10.50",
                          style: TextStyle(
                            color: HexColor("3EB6AA"),
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          "18:2",
                          style: TextStyle(
                            color: HexColor("BCBEC7"),
                            fontSize: 13,
                          ),
                        )
                      ])
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
