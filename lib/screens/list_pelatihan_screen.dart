import 'package:flutter/material.dart';
import 'package:my_app/screens/page/SecondScreen/detail_padi.dart';
import 'package:my_app/screens/page/SecondScreen/detail_cabai.dart';
import 'package:my_app/screens/page/SecondScreen/detail_bunga.dart';
import 'package:my_app/screens/page/SecondScreen/detail_hama.dart';

class PelatihanScreen extends StatelessWidget {
  const PelatihanScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 1,
        children: [
          CategoryItem(
            image: AssetImage('assets/images/padi.png'),
            name: 'Menanam Padi',
            page: DetailMenanamScreen(),
          ),
          CategoryItem(
            image: AssetImage('assets/images/cabai.png'),
            name: 'Menanam Cabai',
            page: DetailCabaiScreen(),
          ),
          CategoryItem(
            image: AssetImage('assets/images/gemitir.png'),
            name: 'Merawat Bunga Gemitir',
            page: DetailBungaScreen(),
          ),
          CategoryItem(
            image: AssetImage('assets/images/hama.png'),
            name: 'Membasmi Hama',
            page: DetailHamaScreen(),
          ),
        ],
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  final ImageProvider image;
  final String name;
  final Widget page;

  const CategoryItem({
    required this.image,
    required this.name,
    required this.page,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
      child: Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey[300],
        ),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image(
              image: image,
              fit: BoxFit.cover,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.transparent, Colors.black.withOpacity(0.6)],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  name,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
