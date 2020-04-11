import 'package:flutter/material.dart';
import 'package:intalagramui/instagram_round_picture.dart';

const _appTextColor = Colors.black;

class InstagramHeader extends StatelessWidget {
  final _nPosts = '257';
  final _nFollowers = '352';
  final _nFollowing = '842';

  static const _numbersTextStyle = TextStyle(
    color: _appTextColor,
    fontWeight: FontWeight.bold,
    fontSize: 20.0,
  );
  static const _infoTextStyle = TextStyle(
      color: _appTextColor, fontWeight: FontWeight.w300, fontSize: 12.0);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        InstagramRoundPicture(
          imageHeight: 85.0,
          imageWidth: 85.0,
        ),
        Padding(
          padding: EdgeInsets.only(left: 29.0, right: 10.0),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                text: _nPosts,
                style: _numbersTextStyle,
                children: <TextSpan>[
                  TextSpan(text: '\nposts', style: _infoTextStyle)
                ]),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 10.0, right: 10.0),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                text: _nFollowers,
                style: _numbersTextStyle,
                children: <TextSpan>[
                  TextSpan(text: '\nfollowers', style: _infoTextStyle)
                ]),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 10.0, right: 29.0),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                text: _nFollowing,
                style: _numbersTextStyle,
                children: <TextSpan>[
                  TextSpan(text: '\nfollowing', style: _infoTextStyle)
                ]),
          ),
        ),
      ],
    );
  }
}
