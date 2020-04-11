import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const _imageUrl = 'https://picsum.photos/300';

class InstagramRoundPicture extends StatelessWidget {
  final double imageWidth;
  final double imageHeight;

  const InstagramRoundPicture({
    Key key,
    @required this.imageWidth,
    @required this.imageHeight,
  })  : assert(imageWidth != null),
        assert(imageHeight != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: imageWidth,
      height: imageHeight,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image:
            DecorationImage(fit: BoxFit.fill, image: NetworkImage(_imageUrl)),
      ),
    );
  }
}
