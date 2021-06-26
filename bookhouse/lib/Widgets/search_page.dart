import 'package:bookify/Common/app_color.dart';
import 'package:bookify/Screens/result_dart.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  List categories = <String>['Engineering Books', 'School Books', 'Magazines'];
  String valueChoose = 'Engineering Books';

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        "Search",
        style: TextStyle(
            color: Colors.grey, fontWeight: FontWeight.w600, fontSize: 20),
      ),
      SizedBox(height: 40,),
      TextField(
        maxLines: 1,
        style: TextStyle(fontSize: 14),
        decoration: InputDecoration(
            contentPadding: EdgeInsets.only(left: 20),
            labelText: "Title",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            )),
      ),
      SizedBox(height: 30,),
      Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey, width: 1),
          borderRadius: BorderRadius.circular(15),
        ),
        child: DropdownButton<String>(
          isExpanded: true,
          hint: Text("Select Category"),
          value: valueChoose,
          onChanged: (String? newValue) {
            setState(() {
              valueChoose = newValue!;
            });
          },
          underline: SizedBox(),
          icon: Icon(Icons.arrow_drop_down),
          dropdownColor: Colors.grey[100],
          items: categories.map<DropdownMenuItem<String>>((value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ),
      SizedBox(height: 30,),
      TextField(
        maxLines: 1,
        style: TextStyle(fontSize: 14),
        decoration: InputDecoration(
            contentPadding: EdgeInsets.only(left: 20),
            labelText: "Location",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            )),
      ),
      SizedBox(height: 40,),
      Center(
        child: GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                PageTransition(
                    child: SearchResultPage(), type: PageTransitionType.fade));
          },
          child: Container(
            width: 90,
            height: 40,
            child: Center(
              child: Text(
                "Search",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
              ),
            ),
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  offset: Offset(0, 13),
                  blurRadius: 13,
                  spreadRadius: 1,
                  color: Colors.grey.withOpacity(.6))
            ], color: AppColor.blue, borderRadius: BorderRadius.circular(30)),
          ),
        ),
      ),
    ]);
  }
}
