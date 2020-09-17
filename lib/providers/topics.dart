import 'package:flutter/foundation.dart';

class Topic {
  final String judul;
  final String gambar;

  Topic({
    @required this.judul,
    @required this.gambar,
  });
}

class Topics with ChangeNotifier {
  List<Topic> _topics = [
    Topic(
      judul: 'MIXED MARTIAL ARTS',
      gambar: 'assets/images/topic1.jpg',
    ),
    Topic(
      judul: 'TRAVEL STORIES',
      gambar: 'assets/images/topic2.jpg',
    ),
    Topic(
      judul: 'FOOD',
      gambar: 'assets/images/topic3.jpg',
    ),
    Topic(
      judul: 'RECOMMENDED FLIGHTS',
      gambar: 'assets/images/topic4.jpg',
    ),
    Topic(
      judul: 'BEST HOTELS',
      gambar: 'assets/images/topic5.jpg',
    ),
  ];

  List<Topic> get topics {
    return [..._topics];
  }
}
