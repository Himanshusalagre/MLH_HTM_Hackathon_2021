import 'package:flutter/material.dart';

Widget buildTextField({title: String}) {
  return Container(
    width: 800,
    child: Row(
      children: [
        Container(child: Title(color: Colors.black, child: Text(title)),width: 100,),
        SizedBox(
          width: 10,
        ),
        Container(
            width: 400,
            child: TextField(
              style: TextStyle(fontSize: 14),
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(left: 20),
                border: OutlineInputBorder(),
              ),
            ))
      ],
    ),
  );
}
