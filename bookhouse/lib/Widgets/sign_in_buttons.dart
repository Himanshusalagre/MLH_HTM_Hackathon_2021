import 'package:flutter/material.dart';

Widget otherSignInButton({url : String }) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
    decoration: BoxDecoration(
      color: Colors.white,
      border: Border.all(color: Colors.grey.withOpacity(.1),width: 1),
      boxShadow: [BoxShadow(
          offset: Offset(0,2),
          blurRadius: 4,
          spreadRadius:0
      )],
      borderRadius: BorderRadius.circular(10),
    ),
    child: Row(children: [
      Image.asset(
        url,
        height: 30,
      ),
    ]),
  );
}