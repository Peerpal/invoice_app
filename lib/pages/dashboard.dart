import 'package:flutter/material.dart';
import 'package:invoice/components/account_component.dart';
import 'package:invoice/components/bolt_component.dart';
import 'package:invoice/components/cards_component.dart';
import 'package:invoice/components/dashboard_info.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';
import 'package:invoice/utils/color_converter.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  List<Widget> _components = [
    DashboardInfoComponent(),
    CardsComponent(),
    BoltComponent(),
    AccountComponent()
  ];
  int _currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("F2F2F2"),
      body: _components[_currentPage],
      // floatingActionButton: FloatingActionButton(
      //   backgroundColor: HexColor("536EFC"),
      //   child: Icon(LineAwesomeIcons.plus),
      //   onPressed: () {},
      // ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: HexColor("536EFC"),
        unselectedItemColor: HexColor("9A9EA9"),
        selectedIconTheme: IconThemeData(
          color: HexColor("536EFC"),
        ),
         unselectedIconTheme: IconThemeData(
          color: HexColor("FB6D75"),
        ),
        onTap: (index) {
          setState(() {
            _currentPage = index;
          });
        },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(LineAwesomeIcons.home),
            title: Text(
              ".",
              style: TextStyle(
                color: HexColor("536EFC"),
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(LineAwesomeIcons.credit_card),
            title: Text(
              ".",
              style: TextStyle(
                color: HexColor("536EFC"),
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(LineAwesomeIcons.bolt),
            title: Text(
              ".",
              style: TextStyle(
                color: HexColor("536EFC"),
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(LineAwesomeIcons.user),
            title: Text(
              ".",
              style: TextStyle(
                color: HexColor("536EFC"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
