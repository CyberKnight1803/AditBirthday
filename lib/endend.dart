import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'BottomOptions.dart';
import 'eggx.dart';
class endend extends StatelessWidget {
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("over ma what more you want", style: CupertinoTheme.of(context).textTheme.navLargeTitleTextStyle.copyWith(color: CupertinoColors.white),
              textAlign: TextAlign.center,),
            ],
          )
        ),),
      navigationBar: CupertinoNavigationBar(
        backgroundColor: CupertinoColors.extraLightBackgroundGray,
        automaticallyImplyLeading: true,
        trailing: GestureDetector(
          onTap: () => {
            Navigator.push(
                context,
                CupertinoPageRoute(builder: (context) => egg1()))
          },
          child: Icon(CupertinoIcons.battery_full, color: CupertinoColors.destructiveRed),
        ),
      ),


    );

  }
}

class endendend extends StatelessWidget {
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("okay now actually finish pakka go enjoy", style: CupertinoTheme.of(context).textTheme.navLargeTitleTextStyle.copyWith(color: CupertinoColors.white),
              textAlign: TextAlign.center,),
            ],
          )
        ),),
      navigationBar: CupertinoNavigationBar(
        backgroundColor: CupertinoColors.extraLightBackgroundGray,
        automaticallyImplyLeading: true,
        middle: Text('last hbd khatam karo bhai', style: TextStyle(color: CupertinoColors.black),) ,
        trailing:  Icon(CupertinoIcons.battery_full, color: CupertinoColors.destructiveRed),
        ),



    );

  }
}
