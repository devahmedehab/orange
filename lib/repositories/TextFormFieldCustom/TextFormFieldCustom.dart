import 'package:flutter/material.dart';

class TextFormFieldCustom extends StatelessWidget {
  final String label;
  final Icon icon;
  final double height;
  final double width;
  const TextFormFieldCustom({required this.label,required this.icon,required this.height, required this.width});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
          padding: EdgeInsets.only(left: 15, right: 15),
          width: width,
          height:height ,
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
          child: TextFormField(
            decoration: InputDecoration(
                contentPadding: EdgeInsets.only(left: 15),
                label: Text(label),
                hintStyle: TextStyle(
                  fontFamily: 'Arial',
                  fontSize: 12,
                  color: const Color(0x63492f24),
                  fontWeight: FontWeight.w700,
                ),
                suffixIcon: icon,
                border: InputBorder.none),
          )),
    );
  }
}
