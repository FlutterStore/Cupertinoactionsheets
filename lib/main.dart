import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: CupertinoActionSheets(),
    );
  }
}

class CupertinoActionSheets extends StatefulWidget {
  const CupertinoActionSheets({super.key});

  @override
  State<CupertinoActionSheets> createState() => _CupertinoActionSheetsState();
}

class _CupertinoActionSheetsState extends State<CupertinoActionSheets> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        backgroundColor: Colors.green,
        middle: Text('CupertinoActionSheet',style: TextStyle(color: Colors.white,fontWeight: FontWeight.normal,fontSize: 15),),
      ),
      child: Center(
        child: OutlinedButton(
          style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.green)
          ),
          onPressed: () 
          {
            showCupertinoModalPopup<void>(
              context: context,
              // anchorPoint: const Offset(10, 5),
              barrierColor: Colors.black.withOpacity(0.7),
              // barrierDismissible: true,
              // filter: ImageFilter.blur(),
              // routeSettings: const RouteSettings(arguments: Object(),name: "Successoft Infotech"),
              // semanticsDismissible: true,
              // useRootNavigator: true,
              builder: (BuildContext context) => CupertinoActionSheet(
                title: const Text('Successoft Infotech'),
                message: const Text('ActionSheet'),
                actions: <CupertinoActionSheetAction>[
                  CupertinoActionSheetAction(
                    isDefaultAction: true,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Default Action',style: TextStyle(color: Colors.green,),),
                  ),
                  CupertinoActionSheetAction(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Action',style: TextStyle(color: Colors.green,)),
                  ),
                  CupertinoActionSheetAction(
                    isDestructiveAction: true,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Destructive Action'),
                  ),
                ],
              ),
            );
          },
          child: const Text('CupertinoActionSheet',style: TextStyle(color: Colors.white,fontWeight: FontWeight.normal,fontSize: 15),),
        ),
      ),
    );
  }
}


