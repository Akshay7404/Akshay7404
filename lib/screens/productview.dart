// ignore_for_file: camel_case_types, use_key_in_widget_constructors, library_private_types_in_public_api, prefer_const_constructors

import 'package:flutter/material.dart';

class productview extends StatefulWidget {
   @override
  _ProductOverviewState createState() => _ProductOverviewState();
  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

class _ProductOverviewState extends State<productview>{

Widget bottomNavigatiorar({Color? iconColor,Color? backgroundColor,Color? color,String? title,
IconData? iconData,})
{
  return Expanded(
    child: 
    Container(
      padding: EdgeInsets.all(20),
      color: backgroundColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(iconData,size: 17,color: iconColor,),
          SizedBox(
            width: 5,),Text(title!,style: TextStyle(color: color),),

        ]),
    ));
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text("Product Overview",style: TextStyle(color: Colors.black),),
      ),
    );
  }
}