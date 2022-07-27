import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:orange/repositories/button_custom/ButtonCustom.dart';
import 'package:orange/repositories/component.dart';
import 'package:orange/repositories/constants.dart';

import '../repositories/TextFormFieldCustom/TextFormFieldCustom.dart';


class HelpYourFriendScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    List items = ["hh", "hhh"];
    return Stack(
      children: [
        Positioned(
          right: 0,
          top: 0,
          child: Image(
            image: AssetImage(
              "assets/images/leg.png",
            ),
            width: w * 0.4,
            height: h * 0.4,
            color: HexColor("#FFE3C5"),
          ),
        ),
        Positioned(
          left: 0,
          top: 0,
          child: RotatedBox(
            quarterTurns: 2,
            child: Image(
              image: AssetImage(
                "assets/images/leg.png",
              ),
              width: w * 0.4,
              height: h * 0.4,
              color: HexColor("#FFE3C5"),
            ),
          ),
        ),
        Positioned(
          left: 0,
          top: h * .500,
          child: Image(
            image: AssetImage(
              "assets/images/leg.png",
            ),
            color: HexColor("#FFE3C5"),
            width: w * 0.4,
            height: h * 0.4,
          ),
        ),
         Center(
            child: Container(
              width: w * 0.7,
              height: h * 0.8,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  border: Border.all(
                    color: gradientSecondColor,
                  )),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Help your friend",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: gradientSecondColor,
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Column(
                    children: [

                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  myDropdown(
                    height: h * 0.06,
                    width: w * 0.27,
                    dropItems: items,
                    selectedItem: items[0],
                    hintText: "Category",
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Detect your current location",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormFieldCustom
                    (
                      label:"Location",
                      icon: Icon(Icons.location_on_outlined,),
                      height: h * 0.06,
                      width: w * 0.27,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormFieldCustom
                    (
                    label:"Number Phone",
                    icon: Icon(Icons.phone,),
                    height: h * 0.06,
                    width: w * 0.27,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ButtonCustom(
                    title: "Send",
                    height: h * 0.06,
                    width: w * 0.27,
                    onTap: () {},
                    color2: primaryColor,
                    icon: Icon(Icons.ice_skating),
                    color: Color(0xffffe3c5),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ButtonCustom(
                    color2: primaryColor,
                    color: Color(0xffffe3c5),
                    title: "Call",
                    onTap: () {},
                    height: h * 0.06,
                    width: w * 0.27,
                    icon: Icon(Icons.ice_skating),
                  ),
                ],
              ),
            ),
          ),

      ],
    );
  }
}
