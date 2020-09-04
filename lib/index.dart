import 'package:adit_birthday/eggx.dart';
import 'package:adit_birthday/pagex.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'endend.dart';
var screenList = [page1(), page2(), page3(),page4(),page5(),page6(),page7(),page8(),page9(),page10(),page11(),page12(),page13(),end()];
var titleList = ['1/13 true facts', '2/13 true facts','3/13 true facts','4/13 true facts','5/13 true facts','6/13 true facts',
  '7/13 true facts','8/13 true facts','9/13 true facts', '10/13 true facts','last one','jk this is last','okay last last promise','the end hbd.'];
var imgList = ['assets/SOAP.jpg','assets/veg chicken.jpg','assets/madison beer.jpg','assets/BOB.jpg','assets/chum.jpg',
  'assets/aditfever.jpeg','assets/party streamer.jpg', 'assets/DYEING HAIR.jpg','assets/ice cream.jpg', 'assets/mushroom.jpg',
  'assets/JOnas bros.jpg', 'assets/Untitled.jpg', 'assets/slash.jpg', 'assets/end.jpg'];
var eggList = ['assets/rabbit.jpg','assets/couples.jpg','assets/vijay.jpeg', 'assets/hitaishi.jpeg',
  'assets/leaf.jpg','assets/antara.jpeg','assets/lotr.jpg'];
var eggscr = [egg1(), egg2(), egg3(),egg4(),egg5(),egg6(),egg7(), endendend()];
class index extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        backgroundColor: CupertinoColors.lightBackgroundGray,
        automaticallyImplyLeading: true,
        middle: Text('INDEX', style: CupertinoTheme.of(context).textTheme.actionTextStyle.copyWith(color: CupertinoColors.black)),
        trailing: Icon(CupertinoIcons.battery_empty, color: CupertinoColors.destructiveRed,),
      ),
      child: ListViewHomePage(),
    );
  }
}
class ListViewHomePage extends StatefulWidget {
  @override
  _ListViewHomePageState createState() => _ListViewHomePageState();
}

class _ListViewHomePageState extends State<ListViewHomePage> {

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(

        child:Container(
        width: double.infinity,
          child :ListView.builder(
          padding: const EdgeInsets.all(10),
            itemCount: screenList.length,
            itemBuilder: (context, index){
              return GestureDetector(
                onTap:  () => {
                  Navigator.push(
                      context,
                      CupertinoPageRoute(builder: (context) => screenList[index]))
                },
                child: Card(
                  child: Row(
                    children: [
                      Container(
                        width:100,
                        height: 100,
                        child: Image.asset('assets/aditadit.jpg'),

                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(titleList[index],style: CupertinoTheme.of(context).textTheme.actionTextStyle.copyWith(color: CupertinoColors.black)),
                      )
                    ],
                  )
                )
              );
            }
            ) ,),
        );
  }
}
