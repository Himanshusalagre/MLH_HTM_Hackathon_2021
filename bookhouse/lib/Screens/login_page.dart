import 'package:bookify/Common/app_color.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: AppColor.primary,
        body: Container(
          width: _width,
          height: _height,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 3,
                child: leftTab(),
              ),
              Expanded(
                flex: 4,
                child: rightTab(),
              )
            ],
          ),
        ));
  }
}

Widget rightTab() {
  return Container(
    padding: EdgeInsets.all(46),
    color: Colors.white,
    child: Column(
      children: [
        SizedBox(height: 40),
        Text(
          'Welcome Back',
          style: TextStyle(
              color: Colors.black, fontSize: 30, fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: 30,
        ),
        TextField(
          decoration: InputDecoration(
              labelText: "Username",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              )),
        ),
        SizedBox(
          height: 20,
        ),
        TextField(
          decoration: InputDecoration(
              labelText: "Password",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              )),
        ),
        SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: () {}, //TODO
          child: Text("Login",style: TextStyle(
            color: AppColor.textColor,
          ),),
          style: ButtonStyle(
            padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 30,vertical: 15)),
              backgroundColor: MaterialStateProperty.all(AppColor.blue),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)))),
        ),
        SizedBox(
          height: 70,
        ),
        Text(
          "Forgot Password?",
          style: TextStyle(color: Color.fromRGBO(143, 148, 251, 1)),
        ),
      ],
    ),
  );
}

Widget leftTab() {
  return Container(
    color: AppColor.blue,
    child: Column(
      children: [
        SizedBox(
          height: 40,
        ),
        Image.asset(
          "/logo.png",
          width: 200,
          height: 200,
          fit: BoxFit.cover,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          'Bookify',
          style: TextStyle(
              color: AppColor.textColor,
              fontSize: 30,
              fontWeight: FontWeight.w800),
        ),
        SizedBox(
          height: 120,
        ),
        Text(
          'Find Your Next',
          style: TextStyle(
              color: AppColor.textColor,
              fontSize: 20,
              fontWeight: FontWeight.w500),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          'Great Read!',
          style: TextStyle(
              color: AppColor.textColorAccent,
              fontSize: 20,
              fontWeight: FontWeight.w500),
        )
      ],
    ),
  );
}
