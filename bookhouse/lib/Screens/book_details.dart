import 'package:bookify/Common/app_color.dart';
import 'package:bookify/Common/constants.dart';
import 'package:flutter/material.dart';

class BookDetails extends StatelessWidget {
  final String imageUrl;

  const BookDetails({Key? key, required this.imageUrl}) : super(key: key);

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
      body: Container(
        decoration:  BoxDecoration(boxShadow: [
          BoxShadow(
              offset: Offset(0, 13),
              blurRadius: 10,
              spreadRadius: 5,
              color: Colors.grey.withOpacity(.8))
        ], color: AppColor.primary, borderRadius: BorderRadius.circular(10)),
        padding: EdgeInsets.all(40),
        height: 800,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Image.asset(
                imageUrl,
                fit: BoxFit.cover,
                height: 800,
              ),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 13,
                      spreadRadius: 1,
                      color: Colors.grey.withOpacity(.6)),
                ],
              ),
            ),
            SizedBox(width: 20),
            Container(
              width: 500,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      "Mechanical Engineering",
                      style: TextStyle(
                          fontSize: 30, fontWeight: FontWeight.w700),
                    ),
                    width: 450,
                  ),
                  SizedBox(height: 30,),
                  Container(
                    width: 450,
                    child: Text(
                      sample,
                      maxLines: 3,
                    ),
                  ),
                  SizedBox(height: 60,),
                  Container(
                    child: Text("Price : 100",style: TextStyle(fontWeight: FontWeight.bold),),
                  ),SizedBox(height: 20,),
                  Container(
                    child: Text("Condition : New",style: TextStyle(fontWeight: FontWeight.w600),),
                  ),
                ],
              ),
            ),
            SizedBox(width: 20,),
            Container(
              width: 300,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                Text("Sender Details: ",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                Text(
                  sample,
                  maxLines: 3,
                ),
                SizedBox(height: 20,),
                Text("Location Details: ",style:  TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                Text(
                  sample,
                  maxLines: 3,
                ), SizedBox(height: 20,),
                Container(
                  width: 250,
                  child: TextField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 20),
                        labelText: "Send a message to seller",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        )),
                  ),
                )
              ]),

            ),
          ],
        ),
      ),
    );
  }
}
