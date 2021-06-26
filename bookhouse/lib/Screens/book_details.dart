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
      body: Center(
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                    child: Image.asset(imageUrl,fit: BoxFit.cover,height: 300,),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 10),
                            blurRadius: 13,
                            spreadRadius: 1,
                            color: Colors.grey.withOpacity(.6)),
                      ],
                    ),),
              ),
              SizedBox(width: 20),
              Container(
                width: 200,
                child: Column(
                  children: [
                    Container(
                      child: Text("Title"),
                    ),
                    Container(
                      child: Text(sample,maxLines: 3,),

                    ),
                    Container(
                      child: Text("Price : 100"),

                    ),
                    Container(
                      child: Text("Condition : New"),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children:[Text("Sender Details: "),
                    Text(sample,maxLines: 3,),
                    Text("Location Details: "),
                    Text(sample,maxLines: 3,),
                    TextField(
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(left: 20),
                          labelText: "Send a message to seller",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          )),
                    )
                  ]
                ),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 13,
                        spreadRadius: 1,
                        color: Colors.grey.withOpacity(.6)),
                  ],
                ),),
            ],
          ),
        ),
      ),
    );
  }
}
