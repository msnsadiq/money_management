import 'package:flutter/material.dart';
// import 'package:hiveproject/mirza//winning_report.dart';
// import 'package:hiveproject/mirza/count_sales_report.dart';
// import 'package:hiveproject/mirza/daily_report.dart';
//import 'package:hiveproject/mirza/screen_home.dart';
import 'package:hiveproject/screens/home/screen_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
     // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,

     // home: WinningReport(),
     // home: CountSales(),
      //home: DailyReport(),

      home: ScreenHome(),

    );
  }
}

