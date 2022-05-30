// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, camel_case_types

import 'package:flutter/material.dart';

class appdrawer extends StatelessWidget {
  const appdrawer({Key? key}) : super(key: key);

  Widget listTile({required IconData icon, String? title}) {
    return ListTile(
      leading: Icon(
        icon,
        size: 32,
      ),
      title: Text(
        title!,
        style: TextStyle(color: Colors.black),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.tealAccent,
      child: ListView(
        children: [
          DrawerHeader(
              child: Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 45,
                child: CircleAvatar(
                  backgroundColor: Colors.yellow,
                  radius: 45,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Welcome Guest"),
                  SizedBox(
                    height: 7,
                  ),
                  Container(
                    height: 30,
                    child: OutlinedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15))),
                        ),
                        child: Text("Log in")),
                  ),
                ],
              )
            ],
          )),
          listTile(icon: Icons.home_outlined, title: "Home"),
          listTile(icon: Icons.shop_outlined, title: "Review cart"),
          listTile(icon: Icons.person_outline, title: "My profile"),
          listTile(icon: Icons.notifications_outlined, title: "Notificatiion"),
          listTile(icon: Icons.star_outlined, title: "Rating & review"),
          listTile(icon: Icons.favorite_outlined, title: "Wishlist"),
          listTile(icon: Icons.copy_outlined, title: "Raise a preview"),
          listTile(icon: Icons.format_quote_outlined, title: "FAQs"),
          Container(
            height: 350,
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Contact Support"),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [Text("call us:"), Text("+91 123456789")],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [Text("Mail us:"), Text("zwggy@gmail.com")],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
