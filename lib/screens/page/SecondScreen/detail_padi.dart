import 'package:flutter/material.dart';

class DetailMenanamScreen extends StatefulWidget {
  const DetailMenanamScreen({Key? key}) : super(key: key);

  @override
  _DetailMenanamScreenState createState() => _DetailMenanamScreenState();
}

class _DetailMenanamScreenState extends State<DetailMenanamScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          Text(
                'Cara Menanam Padi yang Baik dan Banar',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
          _buildSectionTitle('Persiapan Lahan'),
          _buildListItem(
            '1. Pilih lahan yang memiliki drainase baik dan terkena sinar matahari langsung.',
          ),
          _buildListItem(
            '2. Bersihkan lahan dari gulma dan sisa-sisa tanaman sebelumnya.',
          ),
          _buildListItem(
            '3. Buat saluran irigasi yang memadai untuk penyiraman.',
          ),
          _buildListItem(
            '4. Lakukan pengolahan tanah dengan cara menggemburkan dan meratakan permukaan.',
          ),
          _buildSectionTitle('Pemilihan Benih'),
          _buildListItem(
            '1. Pilih benih padi yang berkualitas, sehat, dan bebas dari penyakit.',
          ),
          _buildListItem(
            '2. Pastikan benih memiliki daya kecambah yang baik.',
          ),
          _buildListItem(
            '3. Rendam benih dalam air selama beberapa jam sebelum penanaman.',
          ),
          _buildSectionTitle('Penanaman'),
          _buildListItem(
            '1. Buat pola tanam dengan jarak yang sesuai antar tanaman.',
          ),
          _buildListItem(
            '2. Tanam benih padi dengan kedalaman sekitar 2-3 cm.',
          ),
          _buildListItem(
            '3. Jaga kelembaban tanah dengan melakukan penyiraman secara teratur.',
          ),
          _buildSectionTitle('Perawatan Tanaman'),
          _buildListItem(
            '1. Beri pupuk sesuai dengan kebutuhan tanaman padi.',
          ),
          _buildListItem(
            '2. Lakukan pemangkasan gulma secara teratur.',
          ),
          _buildListItem(
            '3. Perhatikan serangan hama dan penyakit, serta lakukan tindakan pengendalian yang tepat.',
          ),
          _buildSectionTitle('Pemanenan'),
          _buildListItem(
            '1. Panen padi dilakukan ketika tanaman sudah matang.',
          ),
          _buildListItem(
            '2. Potong tangkai padi dengan menggunakan sabit atau mesin pemotong padi.',
          ),
          _buildListItem(
            '3. Jemur padi yang telah dipanen untuk mengeringkannya.',
          ),
          _buildListItem(
            '4. Setelah padi kering, lakukan penggilingan untuk memisahkan beras dari sekam.',
          ),
        ],
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Container(
      margin: EdgeInsets.only(top: 16.0),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildListItem(String content) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: Icon(
              Icons.check_circle,
              color: Colors.green,
            ),
          ),
          Expanded(
            child: Text(content),
          ),
        ],
      ),
    );
  }
}