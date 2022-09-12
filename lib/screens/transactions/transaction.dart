import 'package:flutter/material.dart';

class HomeTransaction
    extends StatelessWidget {
  const HomeTransaction
      ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mHeight = MediaQuery.of(context).size.height;
    final mWidth = MediaQuery.of(context).size.width;
    return ListView.separated(

        padding: EdgeInsets.all(MediaQuery.of(context).size.height*.02),
        itemBuilder: (ctx,index){

      return Card(
        elevation: 0,
        child: ListTile(
          leading: CircleAvatar(

              radius: 50,
              child: Text("12\ndec",
              textAlign: TextAlign.center,
              )),
          title: Text("RS 100000"),
          subtitle: Text("Travel"),
        ),
      );
    }, separatorBuilder: (ctx,index){
      return SizedBox(
        height: mHeight*.01 ,
      );
    }, itemCount: 11);
  }
}
