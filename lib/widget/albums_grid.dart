import 'package:flutter/material.dart';

import 'package:grocery_store/model/album.dart';

class AlbumGridWidget extends StatelessWidget {
  final List<Album> allAlbums;

  const AlbumGridWidget({
    Key? key,
    required this.allAlbums,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemCount: allAlbums.length,
      itemBuilder: (context, index) {
        return Text(allAlbums[index].title);
      },
    );
  }
}
