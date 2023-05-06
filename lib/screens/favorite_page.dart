import 'package:flutter/material.dart';
import '../models/song_model.dart';

class FavoritePage extends StatefulWidget {
  @override
  _FavoritePageState createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  List<Song> _favoriteSongs = Song.songs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple.shade800.withOpacity(0.8),
        title: Text('Favorites'),
      ),
      backgroundColor: Colors.deepPurple.shade200.withOpacity(0.8),
      body: ListView.builder(
        itemCount: _favoriteSongs.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Image.asset(
              _favoriteSongs[index].coverUrl,
              width: 50,
              height: 50,
            ),
            title: Text(_favoriteSongs[index].title),
            subtitle: Text(_favoriteSongs[index].description),
            trailing: IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {
                setState(() {
                  _favoriteSongs.removeAt(index);
                });
              },
            ),
          );
        },
      ),
    );
  }
}
