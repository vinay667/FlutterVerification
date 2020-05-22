import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/color/colors.dart';

class FacebookConnectScreen extends StatefulWidget {
  @override
  _FacebookConnectScreenState createState() => _FacebookConnectScreenState();
}

class _FacebookConnectScreenState extends State<FacebookConnectScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/verification_gradient_back.png'),
                fit: BoxFit.fill)),
        child: ListView(
          children: <Widget>[
            Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                    padding: EdgeInsets.only(
                        left: 12, right: 12, bottom: 12, top: 12),
                    child: Icon(
                      Icons.keyboard_backspace,
                      color: Colors.white,
                    ))),
            Stack(alignment: Alignment.center, children: <Widget>[
              Padding(
                  padding: EdgeInsets.only(left: 24, right: 24),
                  child: Image.asset('images/verification_white_back.png')),
              Padding(
                  padding: EdgeInsets.only(left: 48, right: 48, top: 12),
                  child: Column(
                    children: <Widget>[
                      Image.asset('images/facebook_logo.png'),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        'JexMovers! Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                        style: TextStyle(
                            fontSize: 9.3,
                            fontFamily: 'Gilroy',
                            fontWeight: FontWeight.w500,
                            color: MyColor.detailText),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Container(
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'images/dotedRoundedRectangle.png'),
                                  fit: BoxFit.fill)),
                          child: Column(children: <Widget>[
                            Text(
                              'Connect your social media account to continue',
                              style: TextStyle(
                                  fontSize: 10.8,
                                  fontFamily: 'Gilroy',
                                  fontWeight: FontWeight.w600,
                                  color: MyColor.detailTitleText),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Container(
                              height: 44,
                                padding: EdgeInsets.all(8),
                                margin: EdgeInsets.only(
                                    left: 16, right: 16, top: 8),
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8)),
                                    color: MyColor.facebook_connect_back),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    CircleAvatar(
                                      child: Image.asset(
                                          'images/facebook_icon.png'),
                                      backgroundColor: MyColor.whiteColor,
                                    ),
                                    Text(
                                      'Join with Facebook',
                                      style: TextStyle(
                                          fontSize: 13.3,
                                          fontFamily: 'Gilroy',
                                          fontWeight: FontWeight.w600,
                                          color: MyColor.whiteColor),
                                    )
                                  ],
                                )),
                          ])),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        'By continuing, your agree to our',
                        style: TextStyle(
                            fontSize: 9.3,
                            fontFamily: 'Gilroy',
                            fontWeight: FontWeight.w500,
                            color: MyColor.homeItemTitleColor),
                      ),
                      Text(
                        'Terms of Service and Privacy Policy',
                        style: TextStyle(
                            fontSize: 9.3,
                            fontFamily: 'Gilroy',
                            fontWeight: FontWeight.w500,
                            color: MyColor.facebook_connect_text),
                      )
                    ],
                  )),
            ])
          ],
        ),
      ),
    );
  }
}
