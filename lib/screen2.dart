import 'package:adit_birthday/pagex.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:math';
import 'index.dart';
class HomeScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.black,
      child: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Image.asset('assets/adit_sun.jpg'),
            Text('You are our sun',style:CupertinoTheme.of(context).textTheme.actionTextStyle.copyWith(color: CupertinoColors.white) ),

            Icon(CupertinoIcons.brightness_solid, color: Colors.yellowAccent,),
           Container(
             padding: EdgeInsets.all(10),
              child: CupertinoButton(

              onPressed: (){
                Random random = new Random();
                int randomNumber = random.nextInt(screenList.length);
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => screenList[randomNumber]));

                },
              child: Text('Random Fact Generator', style: CupertinoTheme.of(context).textTheme.actionTextStyle.copyWith(color: CupertinoColors.black)),
              color: Colors.green[800],

            ),),
            Container(
              padding: EdgeInsets.all(10),
                child: CupertinoButton(
              onPressed: (){Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => page1()));
              },
              child: Text('Read in chronological order', style: CupertinoTheme.of(context).textTheme.actionTextStyle.copyWith(color: CupertinoColors.black)),
              color: Colors.green[800],
            ),),
            Container(
              padding: EdgeInsets.all(10),
                child: CupertinoButton(
              onPressed: (){Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => index()));
              },
              child: Text('Index', style: CupertinoTheme.of(context).textTheme.actionTextStyle.copyWith(color: CupertinoColors.black)),
              color: Colors.green[800],
            ))
        ]),),

      navigationBar: CupertinoNavigationBar(
        backgroundColor: CupertinoColors.inactiveGray,
        automaticallyImplyLeading: true,
        middle: Text('696969696969', style: TextStyle(color: CupertinoColors.white),) ,
        trailing: Icon(CupertinoIcons.battery_empty, color: CupertinoColors.destructiveRed,),
      ),);
  }
}

