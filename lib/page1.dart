import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:adit_birthday/page2.dart';
class page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.black,
      child: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment:MainAxisAlignment.center ,
          children: [
            Image.asset('assets/aditadit.jpg'),

          ],
        ),
      ),
      navigationBar: CupertinoNavigationBar(
        backgroundColor: CupertinoColors.extraLightBackgroundGray,
        automaticallyImplyLeading: true,
        middle: Text('TITLE HERE', style: TextStyle(color: CupertinoColors.white),) ,
        trailing:
            GestureDetector(
              onTap: () => {
              Navigator.push(
              context,
              CupertinoPageRoute(builder: (context) => page2()))
              },
              child: Icon(CupertinoIcons.forward, color: CupertinoColors.activeBlue),
            ),


    ),
    );
  }
}
