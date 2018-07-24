import 'package:flutter/material.dart';

class FavouritePage extends StatelessWidget {
  const FavouritePage({ this.saved});
  final Set saved;
  @override
  Widget build(BuildContext context) {
    final tiles = saved.map(
          (pair) {
        return new ListTile(
          title: new Text(
            pair.asPascalCase,
//            style: _biggerFont,
          ),
        );
      },
    );
    final divided = ListTile
        .divideTiles(
      context: context,
      tiles: tiles,
    )
        .toList();

    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Favourite'),
      ),
      body: new ListView(children: divided),
    );

  }
}