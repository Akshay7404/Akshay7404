// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_3/screens/homescreen/singlepro.dart';

// ignore: camel_case_types
class homescreen extends StatelessWidget {
  const homescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 216, 213, 213),
      drawer: const Drawer(),
      appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black),
          title: const Text("Home"),
          actions: [
            const CircleAvatar(
                radius: 12,
                // ignore: sort_child_properties_last
                child: Icon(Icons.search, size: 17, color: Colors.black),
                backgroundColor: Colors.yellow),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: CircleAvatar(
                radius: 17,
                child: Icon(Icons.search),
              ),
            )
          ]),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 8),
              height: 150,
              decoration: BoxDecoration(
                  color: Colors.yellowAccent,
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage("assest/veg.jpg")),
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [Colors.black, Colors.transparent])),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 60,
                            width: 90,
                            decoration: BoxDecoration(
                                color: Colors.lightBlue.shade100,
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(50),
                                    bottomLeft: Radius.circular(5))),
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    right: 10, bottom: 10),
                                child: Text(
                                  "Akshay",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      shadows: [
                                        BoxShadow(
                                            color: Color.fromARGB(
                                                255, 192, 190, 190),
                                            blurRadius: 10,
                                            offset: Offset(3, 3))
                                      ]),
                                ),
                              ),
                            ),
                          ),
                          Text("30% OFF",
                              style: TextStyle(
                                  color: Colors.lightGreenAccent[100],
                                  fontSize: 35,
                                  fontWeight: FontWeight.bold)),
                          Text("On All Vegetables Product",
                              style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Herbs Seasonings",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  //Icon(Icons.arrow_forward_ios),
                  Text(
                    "View All",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [singlepro(), singlepro(), singlepro()],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Herbs Seasonings",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  //Icon(Icons.arrow_forward_ios),
                  Text(
                    "View All",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [singlepro(), singlepro(), singlepro()],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Herbs Seasonings",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  //Icon(Icons.arrow_forward_ios),
                  Text(
                    "View All",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [singlepro(), singlepro(), singlepro()],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
