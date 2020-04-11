import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intalagramui/instagram_carousel.dart';
import 'package:intalagramui/instagram_description.dart';
import 'package:intalagramui/instagram_header.dart';
import 'package:intalagramui/instagram_photos.dart';

const _appTextColor = Colors.black;
const _backgrounAppColor = Colors.white;

class InstagramRoute extends StatelessWidget {
  static const _headerTextSize = 18.0;
  static const _buttonProfileText = 'Edit Profile';
  static const _usernameTextStyle = TextStyle(
      color: _appTextColor,
      fontWeight: FontWeight.bold,
      fontSize: _headerTextSize);

  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      title: new RichText(
          text: TextSpan(style: _usernameTextStyle, children: [
        TextSpan(text: 'john.doe'),
        WidgetSpan(
            child: Icon(Icons.keyboard_arrow_down,
                color: _appTextColor, size: _headerTextSize))
      ])),
      backgroundColor: Colors.white,
      elevation: 0.0,
      actions: <Widget>[
        IconButton(
          icon: Icon(
            Icons.menu,
            color: _appTextColor,
          ),
        )
      ],
    );

    return Scaffold(
        appBar: appBar,
        backgroundColor: _backgrounAppColor,
        body: ListView(
          children: <Widget>[
            Container(
                child: Padding(
              padding: EdgeInsets.all(15.0),
              child: InstagramHeader(),
            )),
            Container(
                child: Padding(
              padding: EdgeInsets.all(15.0),
              child: InstagramDescription(),
            )),
            Container(
                child: Padding(
              padding: EdgeInsets.only(left: 15.0, right: 15.0),
              child: SizedBox(
                  width: double.infinity,
                  child: OutlineButton(
                    child: Text(
                      _buttonProfileText,
                      style: TextStyle(color: _appTextColor),
                    ),
                  )),
            )),
            Container(
                child: Padding(
                    padding: EdgeInsets.all(15.0), child: InstagramCarousel())),
            Container(
              child: ConstrainedBox(
                  constraints: BoxConstraints(minHeight: 70, maxHeight: InstagramTab.getHeightByNumberOfPhotos()),
                  child: InstagramTab()),
            )
          ],
        ));
  }
}
