// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:my_app/screens/routes/DetailScreen/detail_padi.dart';
import 'package:my_app/screens/home_screen.dart';
import 'package:my_app/screens/login_next_screen.dart';
import 'package:my_app/screens/login_screen.dart';
import 'package:my_app/screens/news_screen.dart';
import 'package:my_app/screens/list_pelatihan_screen.dart';
import 'package:my_app/screens/about_screen.dart';
import 'package:my_app/screens/setting_screen.dart';
import 'package:my_app/screens/profile_screen.dart';
import 'package:my_app/screens/routes/DetailScreen/second_screen.dart';
import 'package:my_app/screens/splash_screen.dart';
import 'package:my_app/screens/routes/TanamanScreen/data_tanaman_screen.dart';
import 'package:my_app/utils/constants.dart'; //baru
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:my_app/screens/routes/MahasiswaScreen/news_mahasiswa_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter app',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: SplashPage(),
      routes: { //Baru
        '/login':(context) => Login(),
        '/myhomepage':(context) => MyHomePage(title: 'title'),
        '/news-screen':(context) => const NewsScreen() ,
        '/settings':(context) =>SettingScreen(),
        '/news-mahasiswa-screen': (context) => const NewsMahasiswaScreen(),
        '/tanaman-screen':(context) =>TanamanScreen(),
        '/about-screen':(context) =>AboutScreen(),
      },
    );
  }
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    _navigateToNextScreen();
  }

  Future<void> _navigateToNextScreen() async {
    await Future.delayed(Duration(seconds: 3)); // Waktu tunda selama 3 detik
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => LoginAwal()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    const HomeScreen(),
    const PelatihanScreen(),
    const ProfileScreen(),
  ];

  final List<String> _appBarTitles = const [
    'Home',
    'Pelatihan',
    'Profile',
  ]; // List of titles corresponding to each screen

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Constants.primaryColor,
        title: Text(
          _appBarTitles[_selectedIndex],
          style: TextStyle(
            color: Colors.white, // Ubah warna teks menjadi putih
             fontWeight: FontWeight.bold, // Tambahkan pengaturan tebal (bold)
          ),
        ),
      ),
      drawer: Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Constants.primaryColor,
            ),
            accountName: Text('Adi Andika'),
            accountEmail: Text('adi.andika@student.undiksha.ac.id'),
            currentAccountPicture:CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage('assets/images/me.jpg'),
              ),
          ),
      ListTile(
        leading: Icon(Icons.settings),
        title: const Text('Setting'),
        onTap: () {
          Navigator.pushNamed(context, '/settings');
        },
      ),
      ListTile(
        leading: Icon(Icons.newspaper),
        title: const Text('Data News Mahasisiwa'),
        onTap: () {
          Navigator.pushNamed(context, '/news-mahasiswa-screen');
        },
      ),
      ListTile(
        leading: Icon(Icons.grass_sharp),
        title: const Text('Data Tanaman'),
        onTap: () {
          Navigator.pushNamed(context, '/tanaman-screen');
        },
      ),
      ListTile(
        leading: Icon(Icons.help),
        title: const Text('About'),
        onTap: () {
          Navigator.pushNamed(context, '/about-screen');
        },
      ),
      ListTile(
        leading: Icon(Icons.logout),
        title: const Text('Log Out'),
        onTap: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => LoginAwal()),
          );
        },
      ),
    ],
  ),
),
     body: _screens[_selectedIndex],
      bottomNavigationBar: CurvedNavigationBar(
        color: Constants.primaryColor,
        backgroundColor: Colors.white,
        buttonBackgroundColor: Constants.primaryColor,
        animationCurve: Curves.easeInOut, 
        animationDuration: Duration(milliseconds: 300), 
        height: 55,
        items: <Widget>[
          Icon(
            Icons.home,
            size: 30,
            color: _selectedIndex == 0 ? Colors.white : Colors.black,
          ),
          Icon(
            Icons.category_outlined,
            size: 30,
            color: _selectedIndex == 1 ? Colors.white : Colors.black,
          ),
          Icon(
            Icons.person,
            size: 30,
            color: _selectedIndex == 2 ? Colors.white : Colors.black,
          ),
        ],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
