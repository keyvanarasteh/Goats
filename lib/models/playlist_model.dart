import 'song_model.dart';

class Playlist {
  final String title;
  final List<Song> songs;
  final String imageUrl;

  Playlist({
    required this.title,
    required this.songs,
    required this.imageUrl,
  });

  static List<Playlist> playlists = [
    Playlist(
      title: 'Haftalık Keşif',
      songs: Song.songs,
      imageUrl:
          'https://digitalage.com.tr/wp-content/uploads/2020/08/haftalik-kesif-ozelligi-turkiyede.jpg',
    ),
    Playlist(
      title: 'Hip-hop',
      songs: Song.songs,
      imageUrl:
          'https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/137625112577745.60177189ef503.png',
    ),
    Playlist(
      title: 'Rock & Roll',
      songs: Song.songs,
      imageUrl:
          'https://i.pinimg.com/474x/d0/3d/5f/d03d5f0d9d16b8d3e61e938e8fd12c33.jpg',
    ),
    Playlist(
      title: 'Electronic Dance Music',
      songs: Song.songs,
      imageUrl:
          'https://i.scdn.co/image/ab67706c0000da8477e7244d09f4be1eeee0cd62',
    ),
    Playlist(
      title: 'Arabesk',
      songs: Song.songs,
      imageUrl:
          'https://i.scdn.co/image/ab67706c0000da841d91d9403b32aae4cf56bc9f',
    )
  ];
}
