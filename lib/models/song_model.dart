class Song {
  final String title;
  final String description;
  final String url;
  final String coverUrl;

  Song({
    required this.title,
    required this.description,
    required this.url,
    required this.coverUrl,
  });

  static List<Song> songs = [
    Song(
      title: 'Zorunda miyim',
      description: 'Dilberay & Şahan',
      url: 'assets/music/zorundamiyim.mp3',
      coverUrl: 'assets/images/zorundamiyim.jpeg',
    ),
    Song(
      title: 'Best Of',
      description: 'GOOGGOOSH',
      url: 'assets/music/googoosh.mp3',
      coverUrl: 'assets/images/googoosh.jpeg',
    ),
    Song(
      title: 'Fenerbahce',
      description: 'En Buyuk Cimbom',
      url: 'assets/music/cimbom.mp3',
      coverUrl: 'assets/images/shitteam.jpeg',
    ),
    Song(
      title: 'Ultra Aslan',
      description: 'GALATASARAY',
      url: 'assets/music/kirac.mp3',
      coverUrl: 'assets/images/cimbom.jpg',
    ),
    Song(
      title: 'Metallica',
      description: 'Rock',
      url: 'assets/music/zorundamiyim.mp3',
      coverUrl: 'assets/images/metallica_background.jpeg',
    ),
    Song(
      title: 'Martin Garrix',
      description: 'EDM',
      url: 'assets/music/zorundamiyim.mp3',
      coverUrl: 'assets/images/martingarrix_background.jpeg',
    ),
    Song(
      title: 'The Weeknd',
      description: 'Big',
      url: 'assets/music/zorundamiyim.mp3',
      coverUrl: 'assets/images/theweeknd_background.jpeg',
    ),
    Song(
      title: 'No1',
      description: 'Turkish Rap',
      url: 'assets/music/zorundamiyim.mp3',
      coverUrl: 'assets/images/No1_background.jpeg',
    ),
    Song(
      title: 'Drake',
      description: 'Epic',
      url: 'assets/music/zorundamiyim.mp3',
      coverUrl: 'assets/images/drake_background.jpeg',
    ),
    Song(
      title: 'Hadise',
      description: 'Turkish Pop',
      url: 'assets/music/zorundamiyim.mp3',
      coverUrl: 'assets/images/hadise_background.jpeg',
    ),
    Song(
      title: 'Cahit Saral',
      description: 'Trabzon',
      url: 'assets/music/zorundamiyim.mp3',
      coverUrl: 'assets/images/cahitsaral.jpeg',
    ),
  ];
}
