// ignore_for_file: duplicate_import

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:my_app/screens/routes/MahasiswaScreen/news_mahasiswa_screen.dart';

class NewsMahasiswaBaru extends StatefulWidget {
  const NewsMahasiswaBaru({Key? key}) : super(key: key);

  @override
  _NewsMahasiswaBaruState createState() => _NewsMahasiswaBaruState();
}

class _NewsMahasiswaBaruState extends State<NewsMahasiswaBaru> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _title = TextEditingController();
  final TextEditingController _body = TextEditingController();
  final TextEditingController _kelasmahasiswa = TextEditingController();

  void _showSnackBar(String message) {
    final snackBar = SnackBar(content: Text(message));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  bool _isFormIncomplete = false;

  Future<void> _tambahData() async {
    try {
      final Map<String, dynamic> newData = {
        'title': _title.text,
        'body': _body.text,
        'Kelas': _kelasmahasiswa.text,
      };

      final response = await http.post(
        Uri.parse('https://66038e2c2393662c31cf2e7d.mockapi.io/api/v1/news'),
        body: jsonEncode(newData),
        headers: {'Content-Type': 'application/json'},
      );

      if (response.statusCode == 201) {
        // Data berhasil ditambahkan
        print('Data berhasil ditambahkan');
        _showSnackBar('Data berhasil disimpan'); // Tampilkan SnackBar
        setState(() {});
        Navigator.pop(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    NewsMahasiswaScreen())); // Kembali ke halaman sebelumnya setelah berhasil menambahkan data
      } else {
        // Gagal menambahkan data
        print('Gagal menambahkan data: ${response.statusCode}');
      }
    } catch (e) {
      print('Error: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pendaftaran Mahasiswa'),
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Form(
              key: _formKey, // Mengaitkan GlobalKey dengan widget Form
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextFormField(
                    controller: _title,
                    decoration: InputDecoration(labelText: 'Nama Mahasiswa:'),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Harap isi Identitas Nama';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: _body,
                    decoration: InputDecoration(labelText: 'Nim Mahasiswa :'),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Harap isi Nomor Induk Mahasiswa';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: _kelasmahasiswa,
                    decoration: InputDecoration(labelText: 'Kelas :'),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Harap isi kelas';
                      }
                      return null;
                    },
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _tambahData();
                      } else {
                        setState(() {
                          _isFormIncomplete =
                              true; // Setel _isFormIncomplete menjadi true saat validasi gagal
                        });
                      }
                    }, style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green, // Mengatur warna latar belakang tombol menjadi hijau
                    ),
                    child: Text(
                      "Simpan",
                      style: TextStyle(
                        color: Colors.black, // Mengatur warna teks menjadi hitam
                        fontSize: 16,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => NewsMahasiswaScreen()));
                    },
                     style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green, // Mengatur warna latar belakang tombol menjadi hijau
                    ),
                    child: Text(
                      "Batal",
                      style: TextStyle(
                        color: Colors.black, // Mengatur warna teks menjadi hitam
                        fontSize: 16,
                      ),
                    ),
                  ),
                  if (_isFormIncomplete)
                    const Text(
                      'Harap isi semua Data.',
                      style: TextStyle(color: Colors.red),
                    ),
                ],
              ),
            )),
      ),
    );
  }
}
