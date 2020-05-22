import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/color/colors.dart';
import 'package:flutterapp/screens/facebook_connect_screen.dart';

class VerificationScreen extends StatefulWidget {
  @override
  _VerificationScreenState createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
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
                      Image.asset('images/verification_logo.png'),
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
                            Row(
                              children: <Widget>[
                                Text(
                                  'Phone No',
                                  style: TextStyle(
                                      fontSize: 10.8,
                                      fontFamily: 'Gilroy',
                                      fontWeight: FontWeight.w600,
                                      color: MyColor.detailTitleText),
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  '(Enter your phone number to continue! )',
                                  style: TextStyle(
                                      fontSize: 7.7,
                                      fontFamily: 'Gilroy',
                                      fontWeight: FontWeight.w600,
                                      color: MyColor.detailPrice),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Row(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.only(
                                      left: 12, right: 12, top: 8, bottom: 8),
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(8)),
                                      border: Border.all(color: Colors.grey)),
                                  child: Row(
                                    children: <Widget>[
                                      CircleAvatar(
                                        backgroundImage: AssetImage(
                                            'images/verification_flag.png'),
                                        radius: 12,
                                      ),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Text(
                                        '+63',
                                        style: TextStyle(
                                            fontSize: 10.8,
                                            fontFamily: 'Gilroy',
                                            fontWeight: FontWeight.w500,
                                            color: MyColor.homeItemTitleColor),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                                Expanded(
                                    child: Container(
                                        height: 42,
                                        child: TextFormField(
                                            expands: false,
                                            decoration: InputDecoration(
                                                filled: true,
                                                isDense: true,
                                                contentPadding:
                                                    const EdgeInsets.all(14),
                                                errorBorder: OutlineInputBorder(
                                                    borderRadius: BorderRadius.all(
                                                        Radius.circular(8)),
                                                    borderSide: BorderSide(
                                                      color: Colors.grey,
                                                    )),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                        borderRadius: BorderRadius.all(
                                                            Radius.circular(8)),
                                                        borderSide: BorderSide(
                                                          color: Colors.grey,
                                                        )),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    8)),
                                                        borderSide: BorderSide(
                                                          color: Colors.grey,
                                                        )),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    8)),
                                                        borderSide: BorderSide(
                                                          color: Colors.grey,
                                                        )),
                                                fillColor: MyColor.whiteColor),
                                            style: TextStyle(
                                                color: MyColor.homeItemTitleColor,
                                                fontSize: 13,
                                                fontFamily: 'Muli',
                                                fontWeight: FontWeight.w700),
                                            maxLines: 1,
                                            onSaved: (String value) {},
                                            onFieldSubmitted: (term) {})))
                              ],
                            ),
                          ])),
                      SizedBox(
                        height: 12,
                      ),
                      GestureDetector(
                          child: Container(
                              padding: EdgeInsets.all(12),
                              margin: EdgeInsets.only(left: 16, right: 16),
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                                image: DecorationImage(
                                    image: AssetImage(
                                        "images/verification_button_back.png"),
                                    fit: BoxFit.cover),
                                // button text
                              ),
                              child: Center(
                                  child: Text(
                                "Send Code",
                                style: TextStyle(
                                    color: MyColor.whiteColor,
                                    fontFamily: 'Gilroy',
                                    fontSize: 13.3,
                                    fontWeight: FontWeight.w600),
                              ))),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      FacebookConnectScreen()),
                            );
                          })
                    ],
                  )),
            ])
          ],
        ),
      ),
    );
  }
}
