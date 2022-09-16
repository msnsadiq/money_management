import 'package:flutter/material.dart';
import 'package:hiveproject/db/category/category_db.dart';
import 'package:hiveproject/models/category/category_model.dart';
import 'package:hiveproject/screens/category/category_add_popup.dart';
import 'package:hiveproject/screens/category/home_categories.dart';
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
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text("MONEY MANAGER"),
        centerTitle: true,
      ),
      bottomNavigationBar: MoneyManagerBottomNavigation(),
      body: SafeArea(child: ValueListenableBuilder(
        valueListenable: selectedIndexNotifier,
        builder: (BuildContext, int index, Widget?_) {
          return pages[index];
        }
      ),),
      floatingActionButton: FloatingActionButton(onPressed: (){
       if(selectedIndexNotifier.value == 0){
         print("pageOne");
       }else if(selectedIndexNotifier.value == 1){
         print("pageTwo");

     showCategoryAddPopup(context);

         // final details = CategoryModel(id: DateTime.now().microsecondsSinceEpoch.toString(), name: "Travel", type:CatergoryType.expense );
         // CategoryDB().InsertCategory(details);
       }


      },
      child: Icon(Icons.add,color: Colors.white,),
      ),
    );
  }
}
