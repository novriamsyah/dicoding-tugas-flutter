class UpComming {
  final int id;
  final String title;
  final String photoPath;
  final String genre;

  UpComming({
    required this.id,
    required this.title,
    required this.photoPath,
    required this.genre,
  });

  static List<UpComming> listUpComming = [
    UpComming(
      id: 0,
      title: 'Thor Love & Thunder',
      photoPath: 'thor.jpeg',
      genre: 'Action',
    ),
    UpComming(
      id: 1,
      title: 'Selesai',
      photoPath: 'selesai.jpeg',
      genre: 'Friendship',
    ),
    UpComming(
      id: 2,
      title: 'Indigo',
      photoPath: 'indigo.jpeg',
      genre: 'Horror',
    ),
    UpComming(
      id: 3,
      title: 'Primbon',
      photoPath: 'primbon2.jpeg',
      genre: 'Horror',
    ),
    UpComming(
      id: 4,
      title: 'Spiderman Now Way Home',
      photoPath: 'spiderman.jpeg',
      genre: 'Superhero',
    ),
  ];
}
