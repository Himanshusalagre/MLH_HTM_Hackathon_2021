import 'package:bookify/Common/app_color.dart';
import 'package:bookify/Common/constants.dart';
import 'package:bookify/Screens/book_details.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class SearchResultPage extends StatelessWidget {
  const SearchResultPage({Key? key}) : super(key: key);
  static const List books = [
    'pic_1.jpg',
    'pic_2.jpg',
    'pic_3.jpg',
    'pic_4.jpg',
    'pic_5.jpg',
    'pic_6.jpg',
    'pic_7.jpg',
    'pic_8.jpg',
    'pic_9.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: AppColor.blue,
        elevation: 0,
        leading: SizedBox(),
        title: Text(
          'Bookify',
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.w600, color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 40, right: 60, left: 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: AppColor.headerColor,
              ),
              height: 50,
              child: Center(
                child: Text(
                  "Explore",
                  style: TextStyle(
                    color: AppColor.textColor,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            GridView.count(
                shrinkWrap: true,
                childAspectRatio: .5,
                crossAxisSpacing: 45,
                mainAxisSpacing: 20,
                crossAxisCount: 5,
                children: books.map((e) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(context, PageTransition(
                          child: BookDetails(imageUrl: "/books/${e}",), type: PageTransitionType
                          .rightToLeftWithFade));
                    },
                    child: Container(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 300,
                              decoration: BoxDecoration(

                                  boxShadow: [
                                    BoxShadow(
                                        offset: Offset(0, 10),
                                        blurRadius: 13,
                                        spreadRadius: 1,
                                        color: Colors.grey.withOpacity(.6)),
                                  ],
                              ),
                              child: Image.asset(
                                "/books/${e}",
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(height: 20,),
                            Container(
                              height: 40,
                              child: Text(
                                sample,
                                style: TextStyle(
                                  color: Colors.grey[900],
                                  fontSize: 12, fontWeight: FontWeight.w600,),
                                maxLines: 2,
                              ),
                            ),
                          ]),
                    ),
                  );
                }).toList())
          ],
        ),
      ),
    );
  }
}
