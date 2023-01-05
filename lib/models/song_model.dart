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
      title: 'Zorundamıyım',
      description: 'Dilberay & Şahan',
      url:
          'assets/music/Zorundamıyım  Şahan  Dilber ay  [ Full ]Turkcell Reklamları.mp3',
      coverUrl: 'assets/images/zorundamıyım_background.jpg',
    ),
    Song(
      title: 'AC&DC',
      description: 'Rock',
      url: 'assets/music/AC_DC - Highway to Hell.mp3',
      coverUrl: 'assets/images/adcd_background.jpeg',
    ),
    Song(
      title: 'Metallica',
      description: 'Rock',
      url: 'assets/music/Metallica - Enter Sandman.mp3',
      coverUrl: 'assets/images/metallica_background.jpeg',
    ),
    Song(
      title: 'Martin Garrix',
      description: 'EDM',
      url:
          'assets/music/Martin Garrix - Hold On & Believe (feat. The Federal Empire).mp3',
      coverUrl: 'assets/images/martingarrix_background.jpeg',
    ),
    Song(
      title: 'The Weeknd',
      description: 'Big',
      url: 'assets/music/The Weeknd - Blinding Lights (Official Audio).mp3',
      coverUrl: 'assets/images/theweeknd_background.jpeg',
    ),
    Song(
      title: 'No1',
      description: 'Turkish Rap',
      url: 'assets/music/mp3indirdur-No-1-Boyle-Iyi.mp3',
      coverUrl: 'assets/images/No1_background.jpeg',
    ),
    Song(
      title: 'Drake',
      description: 'Epic',
      url: 'assets/music/Drake, 21 Savage - Rich Flex (Audio).mp3',
      coverUrl: 'assets/images/drake_background.jpeg',
    ),
    Song(
      title: 'Hadise',
      description: 'Turkish Pop',
      url: 'assets/music/Hadise - Küçük Bir Yol.mp3',
      coverUrl: 'assets/images/hadise_background.jpeg',
    ),
    Song(
      title: 'Formula 1',
      description: 'Racing',
      url: 'assets/music/formula-1-theme-song.mp3',
      coverUrl: 'assets/images/f1_background.jpeg',
    )
  ];
}
