import 'package:bookify/Common/app_color.dart';
import 'package:bookify/Screens/result_dart.dart';
import 'package:bookify/Screens/Components/search_page.dart';
import 'package:bookify/Screens/Components/sell_books.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List drawerItem = ["Search", "New Reading", "My Order","Sell Your Books", "Contact Us"];
  int _selected = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.primary,
        body: Container(
          child: Row(
            children: [
              Expanded(flex: 2, child: _leftDrawer()),
              Expanded(
                child: _rightBox(),
                flex: 5,
              )
            ],
          ),
        ));
  }

  Widget _rightBox() {
    return Container(
        padding: EdgeInsets.all(30),
        child: IndexedStack(
          index: _selected,
          children: [
            SearchPage(),
            Center(
                child: Text(
              "New Reading",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            )),
            Center(
                child: Text(
              "My Order",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            )),
            SellBooks(),
            Center(
                child: Text(
              "Contact us",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ))
          ],
        ));
  }

  Widget _leftDrawer() {
    return Drawer(
      elevation: 0,
      child: Container(
        padding: EdgeInsets.only(left: 20),
        width: 200,
        color: AppColor.blue,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            height: 40,
          ),
          Text(
            "Bookify",
            style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            "Browse",
            style: TextStyle(
                color: Colors.grey[100],
                fontSize: 15,
                fontWeight: FontWeight.w300),
          ),
          SizedBox(
            height: 30,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(drawerItem.length, (index) {
              return _drawerListTile(
                  txt: drawerItem[index],
                  fun: () {
                    setState(() {
                      _selected = index;
                    });
                  },
                  isSelected: _selected == index ? true : false);
            }),
          ),
        ]),
      ),
    );
  }

  Widget _drawerListTile({txt: String, fun: VoidCallback, isSelected: bool}) {
    return ListTile(
      dense: true,
      selectedTileColor: Colors.white,
      shape: StadiumBorder(
      ),
      selected: isSelected,
      onTap: fun,
      title: Text(
        txt,
        style: TextStyle(
            color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
      ),
    );
  }
}
