import 'package:adit_birthday/screen2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class HomeScreen1 extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        backgroundColor: CupertinoColors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
         children:[
           Image.asset('assets/aditadit.jpg'),
           Text('Happy Anniversary \nAdit & Adit',
             style: CupertinoTheme.of(context).textTheme.navLargeTitleTextStyle.copyWith(color: CupertinoColors.white),
               textAlign: TextAlign.center, ),
           CupertinoButton(
             onPressed: (){
               Navigator.push(
                   context,
                   MaterialPageRoute(builder: (context) => HomeScreen2()));
             },
             child: Text('Click me for your\n birthday surprise', style: CupertinoTheme.of(context).textTheme.navTitleTextStyle.copyWith(color: CupertinoColors.black)),
             color: Colors.cyan[100],
           )

        ]),
        navigationBar: CupertinoNavigationBar(
          backgroundColor: CupertinoColors.inactiveGray,
          leading: Icon(CupertinoIcons.heart_solid, color: CupertinoColors.systemPink,),

          middle: Text('696969696969', style: TextStyle(color: CupertinoColors.white),
          ) ,
          trailing: Icon(CupertinoIcons.battery_empty, color: CupertinoColors.destructiveRed,),
        ),);
  }
}
