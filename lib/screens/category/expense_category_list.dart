import 'package:flutter/material.dart';

class ExpenseCategoryList extends StatelessWidget {
  const ExpenseCategoryList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mHeight = MediaQuery.of(context).size.height;
    final mWidth = MediaQuery.of(context).size.width;
    return ListView.separated(
        itemBuilder: (ctx, index) {
          return Card(
              child: ListTile(
            leading: Text("expense category $index"),
            trailing: Icon(Icons.delete),
          ));
        },
        separatorBuilder: (ctx, index) {
          return SizedBox(
            height: mHeight * .01,
          );
        },
        itemCount: 100);
  }
}
