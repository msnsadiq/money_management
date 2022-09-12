import 'package:flutter/material.dart';
//import 'package:hiveproject/mirza/screen_home.dart';
import 'package:hiveproject/screens/home/screen_home.dart';

class MoneyManagerBottomNavigation extends StatelessWidget {
  const MoneyManagerBottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: ScreenHome.selectedIndexNotifier,
      builder: (BuildContext context, int selectedIndex, Widget?_) {
        return BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: selectedIndex,
            onTap: (value){
              ScreenHome.selectedIndexNotifier.value = value;
            },
            items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.category),label: "category")
        ]
        );
      }
    );
  }
}
