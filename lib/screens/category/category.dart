import 'package:flutter/foundation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hiveproject/screens/category/expense_category_list.dart';
import 'package:hiveproject/screens/category/income_category_list.dart';

class ScreenCategory extends StatefulWidget {
  const ScreenCategory({Key? key}) : super(key: key);

  @override
  State<ScreenCategory> createState() => _ScreenCategoryState();
}

class _ScreenCategoryState extends State<ScreenCategory>with SingleTickerProviderStateMixin {
late TabController _tabController;
@override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        TabBar(

            controller: _tabController,
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            tabs: [

          Tab(child: Text("INCOME"),
          ),
        Tab(child: Text("EXPENSE "),)
        ]),
        Expanded(
          child: TabBarView(
              controller: _tabController,
              children: [
            // Text("Income List Here"),
            // Text("Expense List Here"),
                InComeCategoryList(),
                ExpenseCategoryList()

          ]),
        )
      ],
    );
  }
}
