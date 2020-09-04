import 'package:adit_birthday/BottomOptions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class egg1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.black,
      child: Container(
        width: double.infinity,
        child: GestureDetector(
          onVerticalDragUpdate: (DragUpdateDetails details){
            actionSheet(context);
          },
          child: Column(
            mainAxisAlignment:MainAxisAlignment.center ,
            children: [
              Image.asset('assets/couples.jpg'),

            ],
          ),
        ),),
      navigationBar: CupertinoNavigationBar(
        backgroundColor: CupertinoColors.extraLightBackgroundGray,
        automaticallyImplyLeading: true,
        middle: Text('TITLE HERE', style: TextStyle(color: CupertinoColors.white),) ,
        trailing: Icon(CupertinoIcons.battery_full, color: CupertinoColors.destructiveRed),
        ),


      );

  }
}
