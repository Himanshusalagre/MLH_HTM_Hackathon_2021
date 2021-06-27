import 'package:bookify/Common/app_color.dart';
import 'package:bookify/Screens/home_page.dart';
import 'package:bookify/Screens/result_dart.dart';
import 'package:bookify/Widgets/sign_in_buttons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                child: _leftTab(),
              ),
              Expanded(
                flex: 4,
                child: _rightTab(context: context),
              )
            ],
          ),
        ));
  }
}

Widget _rightTab({required context}) {
  return Container(
    padding: EdgeInsets.all(46),
    color: Colors.white,
    child: Column(
      children: [
        SizedBox(height: 20),
        Text(
          'Welcome To Bookify',
          style: TextStyle(
              color: Color(0xff00539C),
              fontSize: 30,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 70,
        ),
        TextField(
          maxLines: 1,
          style: TextStyle(fontSize: 14),
          decoration: InputDecoration(
              contentPadding: EdgeInsets.only(left: 20),
              labelText: "Email or phone number",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              )),
        ),
        SizedBox(
          height: 30,
        ),
        TextField(
          maxLines: 1,
          keyboardType: TextInputType.visiblePassword,
          style: TextStyle(fontSize: 14),
          decoration: InputDecoration(
              contentPadding: EdgeInsets.only(left: 20),
              suffixIcon: Icon(
                Icons.visibility_off_outlined,
                color: Colors.grey,
                size: 20,
              ),
              counterText: "Forgot password?",
              labelText: "Password",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              )),
        ),
        SizedBox(
          height: 40,
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(context, PageTransition(child: HomePage(), type: PageTransitionType.fade));
          },
          child: Container(
            width: 90,
            height: 40,
            child: Center(
              child: Text(
                "Login",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w300),
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
        SizedBox(
          height: 40,
        ),
        Text(
          "Don't have an account? Create an account",
          style: TextStyle(
              color: Color.fromRGBO(143, 148, 251, 1),
              decoration: TextDecoration.underline),
        ),
        SizedBox(
          height: 30,
        ),
        Divider(
          thickness: 1,
        ),
        Text(
          "Or continue with",
          style: TextStyle(
              color: Colors.black87, fontWeight: FontWeight.w600, fontSize: 13),
        ),
        SizedBox(
          height: 25,
        ),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          otherSignInButton(url: "/google.png"),
          SizedBox(
            width: 20,
          ),
          otherSignInButton(url: "/github.png"),
          SizedBox(
            width: 20,
          ),
          otherSignInButton(url: "/facebook.png"),
        ])
      ],
    ),
  );
}

Widget _leftTab() {
  return Container(
    color: AppColor.blue,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
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
