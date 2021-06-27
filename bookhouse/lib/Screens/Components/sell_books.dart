
import 'package:bookify/Common/app_color.dart';
import 'package:bookify/Widgets/build_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SellBooks extends StatefulWidget {
  const SellBooks({Key? key}) : super(key: key);

  @override
  _SellBooksState createState() => _SellBooksState();
}

class _SellBooksState extends State<SellBooks> {
  int _selected = 0;
  List typeField = [
    "Exchange",
    "Buy",
  ];
  List priceType = ["Fixed", "Negotiable"];
  List bookCondition = ["New", 'Old'];
  String valueChoose1 = "Exchange";
  String valueChoose2 = "Fixed";
  String valueChoose3 = "New";
  @override
  Widget build(BuildContext context) {
    return IndexedStack(index: _selected, children: [
      Center(child: section1()),
      Center(child: section2()),
      Center(child: section3()),
      Center(child: confirmSection()),
    ]);
  }


  Widget section2() {
    return Container(
        height: 800,
        width: 800,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 13),
                blurRadius: 13,
                spreadRadius: 1,
                color: Colors.grey.withOpacity(.6))
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Book Details", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),),
            SizedBox(
              height: 20,
            ),
            Row(children: [
              Container(child: Text("Type of transfer"),width: 200,),
              SizedBox(width: 10,),
              Container(
                width: 400,
                child: DropdownButton<String>(
                  hint: Text("Select"),
                  value: valueChoose1,
                  onChanged: (String? newValue) {
                    setState(() {
                      valueChoose1 = newValue!;
                    });
                  },
                  underline: SizedBox(),
                  icon: Icon(Icons.arrow_drop_down),
                  dropdownColor: Colors.grey[100],
                  items: typeField.map<DropdownMenuItem<String>>((value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
            ]),
            Row(children: [
              Container(child: Text("Price Type"),width: 200,),
              SizedBox(width: 10,),
              Container(
                width: 400,
                child: DropdownButton<String>(
                  hint: Text("Select"),
                  value: valueChoose2,
                  onChanged: (String? newValue) {
                    setState(() {
                      valueChoose2 = newValue!;
                    });
                  },
                  underline: SizedBox(),
                  icon: Icon(Icons.arrow_drop_down),
                  dropdownColor: Colors.grey[100],
                  items: priceType.map<DropdownMenuItem<String>>((value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
            ]),
            Row(children: [
              Container(child: Text("Book Condition"),width: 200,),
              SizedBox(width: 10,),
              Container(
                width: 400,
                child: DropdownButton<String>(
                  hint: Text("Select"),
                  value: valueChoose3,
                  onChanged: (String? newValue) {
                    setState(() {
                      valueChoose3 = newValue!;
                    });
                  },
                  underline: SizedBox(),
                  icon: Icon(Icons.arrow_drop_down),
                  dropdownColor: Colors.grey[100],
                  items: bookCondition.map<DropdownMenuItem<String>>((value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
            ]),
            Row(children: [
              Container(width: 200, child: Text("Add photo of Book")),
              SizedBox(width: 10,),
              FlatButton(onPressed: () {}, child: Text("Add Photo")),
            ]),
            buildTextField(title: "Publication/Author"),
            buildTextField(title: "MRP"),
            buildTextField(title: "Description"),
            Align(
              alignment: Alignment.bottomLeft,
              child: Row(children: [
                GestureDetector(
                  onTap: () {
                    _selected = 0;
                  },
                  child: Container(
                    width: 90,
                    height: 40,
                    child: Center(
                      child: Text(
                        "Back",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w300),
                      ),
                    ),
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 13),
                              blurRadius: 13,
                              spreadRadius: 1,
                              color: Colors.grey.withOpacity(.6))
                        ],
                        color: AppColor.blue,
                        borderRadius: BorderRadius.circular(15)),
                  ),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _selected = 2;
                    });
                  },
                  child: Container(
                    width: 90,
                    height: 40,
                    child: Center(
                      child: Text(
                        "Next",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w300),
                      ),
                    ),
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 13),
                              blurRadius: 13,
                              spreadRadius: 1,
                              color: Colors.grey.withOpacity(.6))
                        ],
                        color: AppColor.blue,
                        borderRadius: BorderRadius.circular(15)),
                  ),
                ),
              ],),
            )
          ],
        ));
  }
  Widget section3() {
    return Container(
        height: 800,
        width: 800,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 13),
                blurRadius: 13,
                spreadRadius: 1,
                color: Colors.grey.withOpacity(.6))
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Seller Information", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),),
            SizedBox(
              height: 20,
            ),
            buildTextField(title: "Seller Name"),
            buildTextField(title: "Seller Address"),
            buildTextField(title: "Seller Mobile"),
            buildTextField(title: "Seller Email"),
            Align(
              alignment: Alignment.bottomLeft,
              child: Row(children: [
                GestureDetector(
                  onTap: () {
                    _selected = 1;
                  },
                  child: Container(
                    width: 90,
                    height: 40,
                    child: Center(
                      child: Text(
                        "Back",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w300),
                      ),
                    ),
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 13),
                              blurRadius: 13,
                              spreadRadius: 1,
                              color: Colors.grey.withOpacity(.6))
                        ],
                        color: AppColor.blue,
                        borderRadius: BorderRadius.circular(15)),
                  ),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _selected = 3;
                    });
                  },
                  child: Container(
                    width: 90,
                    height: 40,
                    child: Center(
                      child: Text(
                        "Confirm",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w300),
                      ),
                    ),
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 13),
                              blurRadius: 13,
                              spreadRadius: 1,
                              color: Colors.grey.withOpacity(.6))
                        ],
                        color: AppColor.blue,
                        borderRadius: BorderRadius.circular(15)),
                  ),
                ),
              ],),
            )
          ],
        ));
  }
  Widget section1() {
    return Container(
        height: 700,
        width: 700,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 13),
                blurRadius: 13,
                spreadRadius: 1,
                color: Colors.grey.withOpacity(.6))
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Book Details",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    buildTextField(title: "Book Title"),
                    SizedBox(
                      height: 30,
                    ),
                    buildTextField(title: "Category"),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: EdgeInsets.only(right: 20),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _selected = 1;
                    });
                  },
                  child: Container(
                    width: 90,
                    height: 40,
                    child: Center(
                      child: Text(
                        "Next",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w300),
                      ),
                    ),
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 13),
                              blurRadius: 13,
                              spreadRadius: 1,
                              color: Colors.grey.withOpacity(.6))
                        ],
                        color: AppColor.blue,
                        borderRadius: BorderRadius.circular(15)),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
  Widget confirmSection() {
    return Container(
        height: 700,
        width: 700,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 13),
                blurRadius: 13,
                spreadRadius: 1,
                color: Colors.grey.withOpacity(.6))
          ],
        ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("tick.png",height: 50,),
              SizedBox(height: 20,),
              Text("Book posted to Boofiy",)
            ],
          ),
        );
  }
}


