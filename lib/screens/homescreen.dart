import 'package:flutter/material.dart';

import 'ProfsWidget.dart';
import 'StartWidget.dart';

class homescreen extends StatefulWidget {
  @override
  _homescreenState createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final titel = <String>["Alarm", "Profs", "Accessible", "Wallet"];

    final seiten = <Widget>[
      startwidget(),
      profs(),
      Text(
        'Index 2: Accessible',
      ),
      Text(
        'Index 3: Wallet',
      ),
    ];

    final items = <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: new Icon(Icons.access_alarm),
        title: new Text("Alarm"),
      ),
      BottomNavigationBarItem(
        icon: new Icon(Icons.access_time),
        title: new Text("Profs"),
      ),
      BottomNavigationBarItem(
        icon: new Icon(Icons.accessible),
        title: new Text("Accessible"),
      ),
      BottomNavigationBarItem(
        icon: new Icon(Icons.account_balance_wallet),
        title: new Text("Wallet"),
      )
    ];

    var bottomNavBar = BottomNavigationBar(
      items: items,
      type: BottomNavigationBarType.fixed,
      currentIndex: _currentIndex,
      onTap: (int index) {
        setState(() {
          _currentIndex = index;
        });
      },
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(titel[_currentIndex]),
      ),
      body: seiten[_currentIndex],
      bottomNavigationBar: bottomNavBar,
    );
  }
}
