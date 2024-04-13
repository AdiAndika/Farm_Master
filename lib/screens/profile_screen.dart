import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('assets/images/me.jpg'),
            ),
            SizedBox(height: 20),
            Text(
              'Adi Andika',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Platinum',
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 20),
            Center(
                child: ElevatedButton(
                  onPressed: () =>
                  Navigator.pushNamed(context, '/settings'), // baru
                  child: const Text('Setting'),
                ),
              ),
          ],
        ),
      ),
    );
  }
}