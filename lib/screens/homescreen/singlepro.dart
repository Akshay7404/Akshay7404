// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types, prefer_interpolation_to_compose_strings, avoid_web_libraries_in_flutter, unused_import, non_constant_identifier_names, use_function_type_syntax_for_parameters, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_application_3/screens/productview.dart';

class Singalproduct extends StatefulWidget {
  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

Widget box(
    String img, String name, String Prise, String cm, BuildContext context) {
  return Container(
    margin: EdgeInsets.only(right: 8, bottom: 8, top: 8),
    height: 260,
    width: 170,
    decoration: BoxDecoration(
        color: Colors.white, borderRadius: BorderRadius.circular(10)),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 2,
          child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: Image.asset("assest/$img").image))),
        ),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                cm,
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Expanded(
                      child: Container(
                    padding: EdgeInsets.only(left: 5),
                    height: 30,
                    width: 50,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(children: [
                      Expanded(
                        child: Text(Prise,
                            style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.bold)),
                      ),
                    ]),
                  )),
                  SizedBox(width: 5),
                  Expanded(
                      child: Container(
                    height: 30,
                    width: 50,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.remove,
                            size: 15,
                            color: Colors.orange,
                          ),
                          Text("1"),
                          Icon(
                            Icons.add,
                            size: 15,
                            color: Colors.orange,
                          )
                        ]),
                  )),
                ],
              )
            ],
          ),
        ))
      ],
    ),
  );
}
