// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types, prefer_interpolation_to_compose_strings, avoid_web_libraries_in_flutter, unused_import
import 'package:flutter/material.dart';

Widget box(String img,) {
  return Container(
    margin: EdgeInsets.only(right: 8, bottom: 8, top: 8),
    height: 230,
    width: 160,
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
                "Margarita Pizza",
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "110₹/22.5 CM",
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
                        child: Text("22.5 CM",
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
