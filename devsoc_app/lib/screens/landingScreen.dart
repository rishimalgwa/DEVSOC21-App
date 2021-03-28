import 'package:devsoc_app/helpers/theme.dart';
import 'package:devsoc_app/screens/dashboardScreen.dart';
import 'package:devsoc_app/screens/formScreen.dart';
import 'package:devsoc_app/screens/funScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LandingScreen extends StatefulWidget {
  @override
  _LandingScreenState createState() => _LandingScreenState(currentIndex: 1);
}

class _LandingScreenState extends State<LandingScreen> {
  void initState() {
    super.initState();
  }

  final tabs = [
    Fun(),
    Dashboard(),
    Forms(),
  ];
  ThemeHelper t = ThemeHelper();
  int currentIndex;
  _LandingScreenState({@required this.currentIndex});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: t.bgColor,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: t.bgColor,
        elevation: 0,
        selectedItemColor: t.activeColor,
        unselectedItemColor: t.inactiveColor,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.game_controller,
            ),
            label: "Fun",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.home,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.doc_plaintext,
            ),
            label: "Forms",
          ),
        ],
      ),
      body: tabs[currentIndex],
    );
  }
}