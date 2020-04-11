import 'package:flutter/material.dart';

class InstagramTab extends StatelessWidget {
  final numberOfPhotos = 40;
  final photos = <Image>[];
  final photoUrl = 'https://picsum.photos/100';

  final List<Tab> instagramTabs = <Tab>[
    Tab(
      icon: Icon(Icons.grid_on),
    ),
    Tab(
      icon: Icon(Icons.assignment_ind),
    )
  ];

  /// Calculates the total height of the widget
  /// by the number of photos, divided by 3 (photos per row),
  /// and multiplied by 135 (100px of photo height plus 35px
  /// of padding)
  static double getHeightByNumberOfPhotos() {
    return (40 / 3).floor() * 135.0;
  }

  @override
  Widget build(BuildContext context) {
    for (var i = 0; i < numberOfPhotos; i++) {
      photos.add(Image(image: NetworkImage(photoUrl)));
    }

    return DefaultTabController(
      length: 2,
      child: Scaffold(
          backgroundColor: Colors.white,
          appBar: TabBar(
            indicatorColor: Colors.black,
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.grid_on),
              ),
              Tab(
                icon: Icon(Icons.assignment_ind),
              )
            ],
          ),
          body: TabBarView(
            children: <Widget>[_getGridPhotos(), _getGridPhotos()],
          )),
    );
  }

  GridView _getGridPhotos() {
    return GridView.builder(
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (BuildContext context, int index) => photos[index],
      itemCount: numberOfPhotos,
      physics: ScrollPhysics(),
    );
  }
}
