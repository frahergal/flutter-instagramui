import 'package:flutter/material.dart';
import 'package:intalagramui/instagram_round_picture.dart';

class InstagramCarousel extends StatelessWidget {
  final _numberOfCollections = 10;
  final collections = <Center>[];

  @override
  Widget build(BuildContext context) {
    for (var i = 0; i < _numberOfCollections; i++) {
      // The list elements are wrapped into a Center to display a correct aspect ratio
      collections.add(Center(
          child: Padding(
              padding: EdgeInsets.only(right: 15.0),
              child: InstagramRoundPicture(
                imageWidth: 70.0,
                imageHeight: 70.0,
              ))));
    }

    return ConstrainedBox(
        constraints: BoxConstraints(minHeight: 70, maxHeight: 70),
        child: ListView.builder(
          itemBuilder: (BuildContext context, int index) => collections[index],
          itemCount: collections.length,
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
        ));
  }
}
