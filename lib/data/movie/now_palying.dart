class NowPlaying {
  final int id;
  final String title;
  final String photoPath;
  final String genre;

  NowPlaying({
    required this.id,
    required this.title,
    required this.photoPath,
    required this.genre,
  });

  static List<NowPlaying> listNowPlaying = [
    NowPlaying(
      id: 0,
      title: 'Primbon',
      photoPath: 'primbon2.jpeg',
      genre: 'Horror',
    ),
    NowPlaying(
      id: 1,
      title: 'Spiderman Now Way Home',
      photoPath: 'spiderman.jpeg',
      genre: 'Superhero',
    ),
    NowPlaying(
      id: 2,
      title: 'Indigo',
      photoPath: 'indigo.jpeg',
      genre: 'Horror',
    ),
    NowPlaying(
      id: 3,
      title: 'Selesai',
      photoPath: 'selesai.jpeg',
      genre: 'Friendship',
    ),
    NowPlaying(
      id: 4,
      title: 'Thor Love & Thunder',
      photoPath: 'thor.jpeg',
      genre: 'Action',
    ),
  ];
}
