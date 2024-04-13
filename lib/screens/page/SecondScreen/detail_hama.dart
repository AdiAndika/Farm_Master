import 'package:flutter/material.dart';

class DetailHamaScreen extends StatelessWidget {
  const DetailHamaScreen({Key? key}) : super(key: key);

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
                'Cara Membasmi Hama dengan Baik dan Benar',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              Text(
                '1. Identifikasi Hama',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Lakukan identifikasi hama dengan teliti. Kenali jenis hama yang menyerang tanaman Anda. Dengan mengetahui jenis hama yang tepat, Anda dapat menggunakan metode pengendalian yang sesuai.',
              ),
              SizedBox(height: 16),
              Text(
                '2. Metode Pengendalian Fisik',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'a. Manual: Pada hama yang terlihat secara langsung, Anda dapat mengambil hama tersebut dengan tangan atau menggunakan alat seperti pensil atau sikat untuk mengumpulkannya.\nb. Siram Air: Beberapa hama dapat dikendalikan dengan menyiram tanaman menggunakan air. Misalnya, kutu daun dapat dihilangkan dengan menyiram daun menggunakan air yang cukup kuat untuk mengusir mereka.\nc. Perangkap: Gunakan perangkap seperti lem atau perangkap lengket untuk menangkap hama yang bergerak di sekitar tanaman.\nd. Penghalang Fisik: Gunakan jaring atau kain kasa sebagai penghalang untuk mencegah serangan hama pada tanaman.',
              ),
              SizedBox(height: 16),
              Text(
                '3. Metode Pengendalian Hayati',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'a. Penggunaan Predator atau Parasit: Beberapa hama dapat dikendalikan dengan memperkenalkan predator alami atau parasit ke lingkungan tanaman. Contohnya, penggunaan lebah predator untuk mengendalikan kutu daun.\nb. Penggunaan Organisme Pengendali: Beberapa organisme pengendali yang dapat digunakan, seperti cendawan entomopatogenik atau nematoda entomopatogenik, dapat membantu mengendalikan populasi hama.\nc. Rotasi Tanaman: Rotasi tanaman dapat membantu mengurangi populasi hama, karena hama yang spesifik pada tanaman tertentu tidak akan memiliki inang yang tersedia setiap tahun.',
              ),
              SizedBox(height: 16),
              Text(
                '4. Metode Pengendalian Kimia',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'a. Pestisida: Jika metode pengendalian lain tidak berhasil, pertimbangkan penggunaan pestisida. Pastikan untuk membaca petunjuk penggunaan dengan teliti dan ikuti dosis yang dianjurkan. Gunakan pestisida dengan hati-hati dan hindari penggunaan berlebihan yang dapat merusak tanaman atau lingkungan.',
              ),
              SizedBox(height: 16),
              Text(
                '5. Metode Pengendalian Budaya',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'a. Sanitasi: Pertahankan kebersihan di sekitar area tanaman. Buang sisa-sisa tanaman yang terinfeksi atau daun yang jatuh untuk mengurangi tempat persembunyian bagi hama.\nb. Rotasi Tanaman: Praktik rotasi tanaman untuk mencegah perkembangan populasi hama yang spesifik pada satu jenis tanaman.\nc. Pemangkasan: Pemangkasan secara teratur dapat membantu mengurangi risiko infestasi hamapada tanaman yang tumbuh subur.\nd. Penggunaan Varietas Tahan Hama: Pilih varietas tanaman yang tahan terhadap serangan hama tertentu untuk mengurangi risiko infestasi.',
              ),
              SizedBox(height: 16),
              Text(
                '6. Monitoring dan Pencegahan',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'a. Monitoring Rutin: Amati tanaman secara rutin untuk mendeteksi tanda-tanda awal serangan hama. Semakin cepat Anda mengetahui adanya hama, semakin mudah untuk mengendalikannya.\nb. Kebersihan Diri: Pastikan tangan atau alat yang Anda gunakan bersih saat merawat tanaman. Hal ini dapat mencegah penyebaran hama dari satu tanaman ke tanaman lainnya.\nc. Keseimbangan Ekosistem: Jaga keseimbangan ekosistem di sekitar tanaman. Beberapa hama memiliki predator alami yang dapat membantu mengendalikan populasi mereka.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}