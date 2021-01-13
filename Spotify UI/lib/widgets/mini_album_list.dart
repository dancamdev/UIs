import 'package:flutter/material.dart';
import 'package:insta/helpers/size.dart';
import 'package:insta/widgets/mini_album.dart';

class MiniAlbumList extends StatelessWidget {
  MiniAlbumList(this.miniAlbumList);

  final List<AlbumMini> miniAlbumList;

  @override
  Widget build(BuildContext context) {
    renderMiniAlbums(albums) => Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [...albums],
        );

    return Column(
      children: [
        renderSizedBox(height: 24.0),
        renderMiniAlbums(miniAlbumList.getRange(0, 2)),
        renderSizedBox(height: 8.0),
        renderMiniAlbums(miniAlbumList.getRange(2, 4)),
        renderSizedBox(height: 24.0),
      ],
    );
  }
}
