import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:invoice/utils/color_converter.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

class CardsComponent extends StatefulWidget {
  @override
  _CardsComponentState createState() => _CardsComponentState();
}

class _CardsComponentState extends State<CardsComponent> {
  int _currentSlider = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Padding(
        padding: EdgeInsets.only(top: 50.0, left: 15.0, right: 15.0),
        child: Flex(
          direction: Axis.vertical,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Hello, Emeka",
                  style: TextStyle(color: HexColor("313E54"), fontSize: 28.5),
                ),
                Icon(
                  LineAwesomeIcons.user,
                  color: HexColor("9BA1B1"),
                  size: 25.5,
                )
              ],
            ),
            SizedBox(height: 10),
            Column(
              children: <Widget>[
                CarouselSlider(
                  options: CarouselOptions(
                      autoPlay: true,
                      enableInfiniteScroll: true,
                      aspectRatio: 2.0,
                      enlargeCenterPage: true,
                      enlargeStrategy: CenterPageEnlargeStrategy.height,
                      onPageChanged: (index, reason) {
                        setState(() {
                          _currentSlider = index;
                        });
                      }),
                  items: <Widget>[
                    Container(
                      width: 295,
                      height: 229,
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: HexColor("5B50F2"),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Flex(
                        direction: Axis.vertical,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Image.asset("assets/images/master.png"),
                          Text(
                            "\$7,100.50",
                            style: TextStyle(
                                color: HexColor("FFFFFF"), fontSize: 15),
                          ),
                          Flex(
                            direction: Axis.horizontal,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "** 8047",
                                style: TextStyle(
                                    color: HexColor("FFFFFF"), fontSize: 15),
                              ),
                              Text(
                                "12/24",
                                style: TextStyle(
                                    color: HexColor("FFFFFF"), fontSize: 15),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 295,
                      height: 229,
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: HexColor("FB6D75"),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Flex(
                        direction: Axis.vertical,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Image.asset("assets/images/visa.png"),
                          Text(
                            "\$1,200.50",
                            style: TextStyle(
                                color: HexColor("FFFFFF"), fontSize: 15),
                          ),
                          Flex(
                            direction: Axis.horizontal,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "** 7408",
                                style: TextStyle(
                                    color: HexColor("FFFFFF"), fontSize: 15),
                              ),
                              Text(
                                "06/23",
                                style: TextStyle(
                                    color: HexColor("FFFFFF"), fontSize: 15),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Flex(
                  direction: Axis.horizontal,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [0, 1].map((index) {
                    return Container(
                      width: (_currentSlider == index) ? 20 : 10,
                      height: 10,
                      margin:
                          EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _currentSlider == index
                            ? HexColor("6055F3")
                            : HexColor("C6C9DC"),
                      ),
                    );
                  }).toList(),
                )
              ],
            ),
            SizedBox(height: 20.0),
            Container(
              width: double.infinity,
              padding:
                  EdgeInsets.only(top: 25, left: 20, bottom: 30, right: 40),
                  margin: EdgeInsets.symmetric(horizontal: 18.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Flex(
                  direction: Axis.horizontal,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Income",
                          style: TextStyle(
                              color: HexColor("8C909C"), fontSize: 20.5),
                        ),
                        SizedBox(height: 4),
                        Text(
                          "\$12,300.40",
                          style: TextStyle(
                              color: HexColor("2B3A4F"), fontSize: 16),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Spent",
                          style: TextStyle(
                              color: HexColor("8C909C"), fontSize: 20.5),
                        ),
                        SizedBox(height: 4),
                        Text(
                          "\$8,270.20",
                          style: TextStyle(
                              color: HexColor("2B3A4F"), fontSize: 16),
                        ),
                      ],
                    )
                  ],
                ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
              child: Flex(
                direction: Axis.vertical,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Activity",
                        style: TextStyle(
                          color: HexColor("29446E"),
                          fontSize: 20,
                        ),
                      ),
                      Flex(
                        direction: Axis.horizontal,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Weekly",
                            style: TextStyle(
                              color: HexColor("4F43F1"),
                              fontSize: 17,
                            ),
                          ),
                          SizedBox(width: 5),
                          Container(
                            width: 12,
                            height: 8,
                            decoration: BoxDecoration(
                              color: HexColor("4F43F1"),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 10),
                  SingleChildScrollView(
                    child: Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Flex(
                        direction: Axis.vertical,
                        children: <Widget>[
                          Flex(
                            direction: Axis.horizontal,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    width: 50.0,
                                    height: 50.0,
                                    decoration: BoxDecoration(
                                      color: HexColor("4DBAB0"),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          "Restaurants",
                                          style: TextStyle(
                                            color: HexColor("1F2F45"),
                                            fontSize: 17.5,
                                          ),
                                        ),
                                        SizedBox(height: 5),
                                        Text(
                                          "21%",
                                          style: TextStyle(
                                            color: HexColor("9A9EA9"),
                                            fontSize: 13,
                                          ),
                                        )
                                      ])
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "\$ 2,500.50",
                                    style: TextStyle(
                                      color: HexColor("2D3B51"),
                                      fontSize: 15,
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    width: 50.0,
                                    height: 50.0,
                                    decoration: BoxDecoration(
                                      color: HexColor("FFB642"),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          "Shopping",
                                          style: TextStyle(
                                            color: HexColor("1F2F45"),
                                            fontSize: 17.5,
                                          ),
                                        ),
                                        SizedBox(height: 5),
                                        Text(
                                          "43%",
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
                                    "\$ 4,242.50",
                                    style: TextStyle(
                                      color: HexColor("2D3B51"),
                                      fontSize: 15,
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    width: 50.0,
                                    height: 50.0,
                                    decoration: BoxDecoration(
                                      color: HexColor("FB6D75"),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          "Streaming",
                                          style: TextStyle(
                                            color: HexColor("1F2F45"),
                                            fontSize: 17.5,
                                          ),
                                        ),
                                        SizedBox(height: 5),
                                        Text(
                                          "12%",
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
                                    "\$ 150.00",
                                    style: TextStyle(
                                      color: HexColor("F96069"),
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
