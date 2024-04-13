import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tentang Farm Master'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Farm Master',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Farm Master adalah sebuah aplikasi yang dirancang untuk membantu petani dalam mengelola pertanian mereka. Aplikasi ini menyediakan berbagai fitur dan informasi yang berguna untuk meningkatkan produktivitas dan efisiensi dalam kegiatan pertanian.',
              ),
              SizedBox(height: 16),
              Text(
                'Pembuat Aplikasi',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage('assets/images/me.jpg'),
              ),
              SizedBox(height: 8),
              Text(
                'Nama: I Putu Adi Andika Putra',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'NIM: 2215091082',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Email: adi.andika@student.undiksha.ac.id',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}