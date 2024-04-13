import 'package:flutter/material.dart';

class DetailBungaScreen extends StatelessWidget {
  const DetailBungaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Cara Merawat Bunga Gemitir dengan Baik dan Benar',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              Text(
                '1. Pencahayaan',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Letakkan bunga gemitir di tempat yang mendapatkan sinar matahari yang cukup. Bunga gemitir membutuhkan sinar matahari langsung selama beberapa jam setiap harinya. Namun, hindari paparan sinar matahari yang terlalu intens, terutama pada siang hari.',
              ),
              SizedBox(height: 16),
              Text(
                '2. Suhu dan Kelembaban',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Bunga gemitir tumbuh baik pada suhu yang sejuk, antara 18-24 derajat Celsius. Hindari suhu yang terlalu panas atau terlalu dingin. Selain itu, bunga gemitir menyukai kelembaban yang tinggi. Pastikan udara di sekitar bunga tetap lembab dengan cara menyemprotkan air pada daun-daunnya secara teratur.',
              ),
              SizedBox(height: 16),
              Text(
                '3. Penyiraman',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Lakukan penyiraman secara teratur namun jangan terlalu berlebihan. Pastikan tanah di sekitar bunga tetap lembab, tetapi tidak tergenang air. Gunakan air yang bersih dan jangan biarkan bunga terkena genangan air yang berlebihan.',
              ),
              SizedBox(height: 16),
              Text(
                '4. Pemupukan',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Berikan pupuk yang khusus untuk tanaman berbunga secara teratur. Pilih pupuk yang mengandung nitrogen, fosfor, dan kalium untuk membantu pertumbuhan dan perkembangan bunga gemitir. Ikuti petunjuk penggunaan pada kemasan pupuk yang Anda gunakan.',
              ),
              SizedBox(height: 16),
              Text(
                '5. Pemangkasan',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Lakukan pemangkasan secara berkala untuk merawat bentuk dan keindahan bunga gemitir. Pemangkasan juga membantu mempromosikan pertumbuhan tunas baru. Gunakan gunting tajam dan bersih saat memangkas bagian tanaman yang kering atau rusak.',
              ),
              SizedBox(height: 16),
              Text(
                '6. Pengendalian Hama dan Penyakit',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Amati bunga gemitir secara rutin untuk mengidentifikasi dan mengendalikan hama atau penyakit yang mungkin menyerang. Jika ditemukan serangan hama atau penyakit, gunakan insektisida atau fungisida yang sesuai.',
              ),
              SizedBox(height: 16),
              Text(
                '7. Perawatan Tambahan',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'a. Dukungan Tumbuhan: Bunga gemitir cenderung merambat, sehingga sediakan dukungan atau rangkaian tali untuk membantu tanaman tetap tegak dan terorganisir.\nb. Pema. Pemindahan Tanaman: Jika bunga gemitir Anda tumbuh terlalu besar atau terlalu padat, pertimbangkan untuk memindahkannya ke pot yang lebih besar agar akar memiliki ruang yang cukup untuk tumbuh.\nc. Pengecualian Bunga Mati: Jika ada bunga mati atau layu, segera hapus bunga tersebut untuk mencegah penyebaran penyakit atau pembusukan.\nd. Perlindungan Musim Dingin: Jika Anda tinggal di daerah yang memiliki musim dingin, bunga gemitir perlu dilindungi dari suhu beku. Pindahkan tanaman ke dalam ruangan atau berikan lapisan pelindung seperti mulsa untuk menjaga suhu tanah tetap hangat.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}