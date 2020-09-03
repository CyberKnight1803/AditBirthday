import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.black,
      child: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment:MainAxisAlignment.center ,
          children: [
            Image.asset('assets/adit_sun.jpg'),

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

          },
          child: Icon(CupertinoIcons.forward, color: CupertinoColors.activeBlue),
        ),


      ),
    );
  }
}
