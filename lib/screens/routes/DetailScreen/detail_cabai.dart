import 'package:flutter/material.dart';

class DetailCabaiScreen extends StatelessWidget {
  const DetailCabaiScreen({Key? key}) : super(key: key);

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
                'Cara Menanam Cabai dengan Benar dan Baik',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              Text(
                '1. Pemilihan Varietas',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Pilih varietas cabai yang sesuai dengan kondisi iklim dan preferensi Anda. Pastikan varietas yang Anda pilih tahan terhadap penyakit dan cocok untuk ditanam di daerah Anda.',
              ),
              SizedBox(height: 16),
              Text(
                '2. Persiapan Tanah',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Persiapkan tanah dengan baik. Tanah yang ideal untuk menanam cabai adalah tanah yang gembur, kaya akan nutrisi, dan memiliki drainase yang baik. Lakukan penggemburan tanah dan campurkan pupuk organik untuk meningkatkan kesuburan tanah.',
              ),
              SizedBox(height: 16),
              Text(
                '3. Penyemaian',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Taburkan biji cabai ke dalam media penyemaian yang telah disiapkan. Biji cabai dapat ditaburkan secara langsung atau ditanam dalam pot atau baki. Pastikan media penyemaian tetap lembab dengan menyiram secara teratur. Tempatkan wadah penyemaian di tempat yang terkena sinar matahari.',
              ),
              SizedBox(height: 16),
              Text(
                '4. Penanaman',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Setelah bibit cabai tumbuh dengan baik dan memiliki 4-6 daun, bibit siap untuk ditanam di lahan tanam utama. Buatlah lubang tanam dengan kedalaman yang cukup untuk menanam bibit cabai. Pastikan jarak tanam antarbibit sesuai dengan rekomendasi varietas yang Anda tanam. Setelah menanam, siram tanaman dengan air secukupnya.',
              ),
              SizedBox(height: 16),
              Text(
                '5. Perawatan',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'a. Penyiraman: Lakukan penyiraman secara teratur untuk menjaga kelembaban tanah. Hindari penyiraman yang berlebihan agar tanah tidak tergenang.\nb. Pemupukan: Berikan pupuk secara teratur sesuai dengan kebutuhan tanaman. Pilihlah pupuk yang mengandung nitrogen, fosfor, dan kalium untuk pertumbuhan yang optimal.\nc. Penyulaman: Jika terdapat bibit yang tidak tumbuh dengan baik, lakukan penyulaman dengan menanam bibit baru di tempat yang kosong.\nd. Pengendalian Hama dan Penyakit: Amati tanaman secara rutin dan lakukan tindakan pencegahan seperti penyemprotan insektisida atau fungisida jika diperlukan.\ne. Pemangkasan: Lakukan pemangkasan pada bagian tanaman yang tidak produktif atau mengalami kerusakan untuk merangsang pertumbuhan cabai yang lebih baik.',
              ),
              SizedBox(height: 16),
              Text(
                '6. Panen',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Cabai biasanya dapat dipanen setelah 2-3 bulan setelah penanaman. Panen cabai yang sudah matang secara bertahap. Gunakan gunting atau pisau tajam untuk memotong cabai. Jangan menarik cabai secara paksa agar tidak merusak tanaman.',
              ),
              SizedBox(height: 16),
              Text(
                '7. Penyimpanan',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Setelah dipanen, cabai dapat disimpan dalam kondisi yang baik. Cabai dapat disimpan di tempat yang kering dan sejuk dengan suhu sekitar 10-13 derajat Celsius. Hindari menyimpan cabai bersama dengan buah-buahan lain yang dapat mempercepat proses pematangan.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}