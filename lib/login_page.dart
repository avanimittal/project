import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:piroject/colors_palette.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final colorsPalette = ColorsPalette();
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: width,
        height: height,
        color: Colors.transparent,
        child: Stack(
          children: [
            Container(
              width: width,
              height: height,
              color: colorsPalette.lightShade,
            ),
            ClipPath(
              clipper: BackgroundClipper(),
              child: Container(
                width: width,
                height: height * 0.55,
                color: colorsPalette.darkShade,
              ),
            ),
            Positioned(
                top: height * 0.15,
                left: width * 0.08,
                child: Text(
                  'Register',
                  style: TextStyle(
                      color: colorsPalette.whiteColor, fontSize: 30.0),
                )),
            Positioned(
                top: height * 0.22,
                left: width * 0.08,
                child: Text(
                  'Create a new account',
                  style: TextStyle(
                      color: colorsPalette.whiteColor, fontSize: 15.0),
                )),
            Positioned(top:height*0.3,left:width*0.08,right:width*0.08,child: Container(decoration:BoxDecoration(
              color: colorsPalette.whiteColor,
              borderRadius:BorderRadius.circular(25.0),),
            child: Form(
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Name',
                        labelStyle:Theme.of(context).textTheme.subtitle2.merge(TextStyle(color: colorsPalette.fontColor,fontSize: 15.0))
                      ),
                    ),
                    SizedBox(height: 20.0,),
                    TextFormField(
                      decoration: InputDecoration(
                          labelText: 'Email address',
                          labelStyle:Theme.of(context).textTheme.subtitle2.merge(TextStyle(color: colorsPalette.fontColor,fontSize: 15.0))
                      ),
                    ),
                    SizedBox(height: 20.0,),
                    TextFormField(
                      decoration: InputDecoration(
                          labelText: 'Password',
                          labelStyle:Theme.of(context).textTheme.subtitle2.merge(TextStyle(color: colorsPalette.fontColor,fontSize: 15.0))
                      ),
                    ),
                    SizedBox(height: 50.0,),
                    SizedBox(
                      width: 200.0,
                      height: 50.0,
                      child: RaisedButton(
                        color: colorsPalette.darkShade,
                        child: Text('Sign up',style: Theme.of(context).textTheme.button.merge(TextStyle(color: colorsPalette.whiteColor,fontSize: 20.0)),),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        onPressed: (){},
                      ),
                    )
                  ],
                ),
              ),
            )))
          ],
        ),
      ),
    );
  }
}

class BackgroundClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 150);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
