import 'package:flutter/material.dart';
import 'package:hiveproject/screens/category/category.dart';
import 'package:hiveproject/screens/home/widgets/bottom_navigation.dart';
import 'package:hiveproject/screens/transactions/transaction.dart';

class ScreenHome extends StatelessWidget {
   ScreenHome({Key? key}) : super(key: key);
static ValueNotifier<int> selectedIndexNotifier = ValueNotifier(0);
  dynamic pages = const[

    HomeTransaction(),
    ScreenCategory()
  ];
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MoneyManagerBottomNavigation(),
      body: SafeArea(child: ValueListenableBuilder(
        valueListenable: selectedIndexNotifier,
        builder: (BuildContext, int index, Widget?_) {
          return pages[index];
        }
      )),
    );
  }
}
