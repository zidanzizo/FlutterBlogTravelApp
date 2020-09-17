import 'package:flutter/foundation.dart';

import 'TravelSpot.dart';

class TravelSpots with ChangeNotifier {
  List<TravelSpot> _travelspots = [
    TravelSpot(
      judul: 'Ranu Kumbolo',
      deskripsi:
          'Ranu Kumbolo (bahasa Indonesia: Danau Kumbolo) adalah sebuah danau yang terletak di dalam Taman Nasional Bromo Tengger Semeru, Jawa Timur, Indonesia. Danau ini merupakan bagian dari rute termudah yang berasal dari Ranu Pani menuju puncak Gunung Semeru.',
      lokasi: 'Malang, Jawa Timur',
      gambar: [
        ImageSpot(image: 'assets/images/rakum1.jpg'),
        ImageSpot(image: 'assets/images/rakum2.jpg'),
        ImageSpot(image: 'assets/images/rakum3.jpg'),
        ImageSpot(image: 'assets/images/rakum4.jpg'),
      ],
    ),
    TravelSpot(
      judul: 'Gunung Bromo',
      deskripsi:
          'Gunung Bromo (dari bahasa Sanskerta: Brahma, salah seorang Dewa Utama dalam agama Hindu) atau dalam bahasa Tengger dieja "Brama", adalah sebuah gunung berapi aktif di Jawa Timur, Indonesia. Gunung ini memiliki ketinggian 2.329 meter di atas permukaan laut dan berada dalam empat wilayah kabupaten, yakni Kabupaten Probolinggo, Kabupaten Pasuruan, Kabupaten Lumajang, dan Kabupaten Malang.\n\n Gunung Bromo terkenal sebagai objek wisata utama di Jawa Timur. Sebagai sebuah objek wisata, Bromo menjadi menarik karena statusnya sebagai gunung berapi yang masih aktif. Gunung Bromo termasuk dalam kawasan Taman Nasional Bromo Tengger Semeru.Bentuk tubuh Gunung Bromo bertautan antara lembah dan ngarai dengan kaldera atau lautan pasir seluas sekitar 10 kilometer persegi. Ia mempunyai sebuah kawah dengan garis tengah ± 800 meter (utara-selatan) dan ± 600 meter (timur-barat). Sedangkan daerah bahayanya berupa lingkaran dengan jari-jari 4 km dari pusat kawah Bromo.',
      lokasi: 'Malang, Jawa Timur',
      gambar: [
        ImageSpot(image: 'assets/images/bromo1.jpg'),
        ImageSpot(image: 'assets/images/bromo2.jpg'),
        ImageSpot(image: 'assets/images/bromo3.jpg'),
      ],
    ),
    TravelSpot(
      judul: 'Coban Rais',
      deskripsi:
          'Coban Rais merupakan wisata alam yang memiliki air terjun dengan ketinggian 20 meter. Air terjun ini memiliki ketinggian kurang lebih 20 meter. Berada di kawasan perbukitan dengan ketinggian sekitar 1025 m dpl di lereng Gunung Panderman. Aliran airnya mengalir melewati perbukitan sejuk menghijau',
      lokasi: 'Batu, Jawa Timur',
      gambar: [
        ImageSpot(image: 'assets/images/rais1.jpg'),
        ImageSpot(image: 'assets/images/rais2.jpg'),
      ],
    ),
  ];

  List<TravelSpot> get travelspots {
    return [..._travelspots];
  }
}
