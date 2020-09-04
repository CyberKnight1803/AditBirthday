import 'package:adit_birthday/index.dart';
import 'package:adit_birthday/screen1.dart';
import 'package:adit_birthday/screen2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
actionSheet(BuildContext context)
{
  showCupertinoModalPopup(
    context: context,
    builder: (BuildContext context) => CupertinoActionSheet(
        title: const Text('Choose Options'),
        actions: <Widget>[
          CupertinoActionSheetAction(
            child: const Text('Home'),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen1()));
            },
          ),
          CupertinoActionSheetAction(
            child: const Text('Index'),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => index()));
            },
          )
        ],
        cancelButton: CupertinoActionSheetAction(
          child: const Text('Cancel'),
          isDefaultAction: true,
          onPressed: () {
            Navigator.pop(context, 'Cancel');
          },
        )),
  );
}