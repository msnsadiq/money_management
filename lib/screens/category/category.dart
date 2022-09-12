import 'package:flutter/foundation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ScreenCategory extends StatelessWidget {
  const ScreenCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        TabBar(tabs: [
          Tab(child: Text("pageOne"),
          ),
        Tab(child: Text("pageTwo"),)
        ])
      ],
    );
  }
}
