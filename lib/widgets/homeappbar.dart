import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          Icon(
            Icons.sort,
            size: 25,
            color: Colors.green,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "Yotta Market",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
          ),
          Spacer(),
          Badge(
            toAnimate: true,
            badgeColor: Colors.red,
            padding: EdgeInsets.all(7),
            badgeContent: Text(
              "3",
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
            ),
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, "cartPage");
              },
              child: Icon(
                Icons.shopping_cart_outlined,
                size: 25,
                color: Colors.green,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
