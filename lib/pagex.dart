import 'package:adit_birthday/PageSkeleton.dart';
import 'package:adit_birthday/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'BottomOptions.dart';
import 'endend.dart';
class page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return pageSkeleton(imgList[0], screenList[1], context, titleList[0]);
  }
}

class page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return pageSkeleton(imgList[1], screenList[2], context, titleList[1]);
  }
}
class page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return pageSkeleton(imgList[2], screenList[3], context, titleList[2]);
  }
}
class page4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return pageSkeleton(imgList[3], screenList[4], context, titleList[3]);
  }
}
class page5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return pageSkeleton(imgList[4], screenList[5], context, titleList[4]);
  }
}
class page6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return pageSkeleton(imgList[5], screenList[6], context, titleList[5]);
  }
}
class page7 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return pageSkeleton(imgList[6], screenList[7], context, titleList[6]);
  }
}
class page8 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return pageSkeleton(imgList[7], screenList[8], context, titleList[7]);
  }
}
class page9 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return pageSkeleton(imgList[8], screenList[9], context, titleList[8]);
  }
}
class page10 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return pageSkeleton(imgList[9], forgotten(), context, titleList[9]);
  }
}
class forgotten extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return pageSkeleton('assets/drop object.jpg', page11(), context, 'we legit forgot to add this lol');
  }
}

class page11 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return pageSkeleton(imgList[10], screenList[11], context, titleList[10]);
  }
}
class page12 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return pageSkeleton(imgList[11], screenList[12], context, titleList[11]);
  }
}
class page13 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return pageSkeleton(imgList[12], screenList[13], context, titleList[12]);
  }
}

class end extends StatefulWidget {
  @override
  _endState createState() => _endState();
}

class _endState extends State<end> {
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
              Image.asset('assets/end.jpeg'),

            ],
          ),
        ),),
      navigationBar: CupertinoNavigationBar(
        backgroundColor: CupertinoColors.extraLightBackgroundGray,
        automaticallyImplyLeading: true,
        middle: Text('the end hbd.', style: TextStyle(color: CupertinoColors.black),) ,
        trailing:
        GestureDetector(
          onTap: () => {
            Navigator.push(
                context,
                CupertinoPageRoute(builder: (context) => endend()))
          },
          child: Icon(CupertinoIcons.forward, color: CupertinoColors.activeBlue),
        ),


      ),
    );

  }
}

