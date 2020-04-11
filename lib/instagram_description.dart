import 'package:flutter/material.dart';

const _appTextColor = Colors.black;

class InstagramDescription extends StatelessWidget {
  final _name = 'John Doe';
  final _job = '\nSoftware Engineer';
  final _description = '\nLorem ipsum dolor sit amet,'
      '\nconsectetur adipiscing elit, \nsed do eiusmod tempor incididunt';
  final _website = '\nwebsite.com/';

  static const _nameTextStyle = TextStyle(
      color: _appTextColor, fontWeight: FontWeight.bold, fontSize: 13.0);

  static const _jobTextStyle = TextStyle(
    color: Colors.grey,
    fontWeight: FontWeight.w300,
  );

  static const _descriptionTextStyle = TextStyle(
    color: _appTextColor,
    fontWeight: FontWeight.w300,
  );

  static const _webTextStyle = TextStyle(
    color: Colors.blue,
    fontWeight: FontWeight.w300,
  );

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.left,
      text: TextSpan(text: _name, style: _nameTextStyle, children: <TextSpan>[
        TextSpan(
            text: _job,
            style: _jobTextStyle),
        TextSpan(
          text: _description,
          style: _descriptionTextStyle,
        ),
        TextSpan(
          text: _website,
          style: _webTextStyle
        )
      ]),
    );
  }
}
