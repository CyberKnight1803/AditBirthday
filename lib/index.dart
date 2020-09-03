import 'package:adit_birthday/page1.dart';
import 'package:adit_birthday/page2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
var screenList = [page1(), page2()];
var titleList = ['Title 1', 'Title 2'];
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
