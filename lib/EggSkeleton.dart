import 'package:adit_birthday/BottomOptions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
eggSkeleton(var img, BuildContext context, var title, var nxtScr){
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
            Image.asset(img),

          ],
        ),
      ),),
    navigationBar: CupertinoNavigationBar(
      backgroundColor: CupertinoColors.extraLightBackgroundGray,
      automaticallyImplyLeading: true,
      middle: Text(title, style: TextStyle(color: CupertinoColors.black),) ,
      trailing: GestureDetector(
        onTap: () => {
          Navigator.push(
              context,
              CupertinoPageRoute(builder: (context) => nxtScr))
        },
        child: Icon(CupertinoIcons.forward, color: CupertinoColors.activeBlue),
      ),
    ),


  );

}

