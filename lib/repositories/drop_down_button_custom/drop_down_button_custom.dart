

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DropDownButtonText extends StatelessWidget {
  String text;
  IconData icon;
  double width;

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: () {},
      child: Container(
          padding: EdgeInsets.only(left: 15, right: 15),
          width:width?? 400,
          height: 50,
          decoration: BoxDecoration(
            color: const Color(0xffffffff),
            borderRadius: BorderRadius.circular(26.0),
            boxShadow: [
              BoxShadow(
                color: const Color(0x29000000),
                offset: Offset(0, 3),
                blurRadius: 6,
              ),
            ],
          ),
          child: Row(
            children: [
              Text(
                text??"",
                style: TextStyle(
                  fontSize: w * 0.007,
                  fontWeight: FontWeight.bold,
                  color: text!=null? Color(0x63492f24):Colors.white,
                ),
              ),
              Spacer(),
              Icon(
                icon??Icons.add, //arrow ios down
                color:icon==null ?Colors.white: Colors.black,
              ),
            ],
          )),
    );
  }

  DropDownButtonText({
      required this.text,
      required this.width,
      required this.icon,
  });
}
