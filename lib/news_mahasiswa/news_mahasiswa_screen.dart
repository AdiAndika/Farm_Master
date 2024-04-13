import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:my_app/dto/news.dart';
import 'package:my_app/utils/constants.dart';
import 'package:my_app/news_mahasiswa/news_mahasiswa_baru.dart';
import 'package:my_app/news_mahasiswa/news_detail_mahasiswa.dart';

class NewsMahasiswaScreen extends StatefulWidget {
  const NewsMahasiswaScreen({Key? key}) : super(key: key);

  @override
  _NewsMahasiswaScreenState createState() => _NewsMahasiswaScreenState();
}

class _NewsMahasiswaScreenState extends State<NewsMahasiswaScreen> {
  Future<List<News>> _getData() async {
    try {
      final response = await http.get(
          Uri.parse('https://66038e2c2393662c31cf2e7d.mockapi.io/api/v1/news'));

      if (response.statusCode == 200) {
        final List<dynamic> data = jsonDecode(response.body);
        final List<News> newsList =
            data.map((item) => News.fromJson(item)).toList();
        return newsList;
      } else {
        throw Exception('Failed to load news');
      }
    } catch (e) {
      throw Exception('Failed to fetch data: $e');
    }
  }

  void _showSnackBar(String message) {
    final snackBar = SnackBar(content: Text(message));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  Future<void> _deleteData(String id) async {
    try {
      final response = await http.delete(
        Uri.parse(
            'https://66038e2c2393662c31cf2e7d.mockapi.io/api/v1/news/$id'),
      );

      if (response.statusCode == 200) {
        _showSnackBar('Data berhasil Dihapus');
        setState(() {});
      } else {
        throw Exception('Failed to delete news');
      }
    } catch (e) {
      throw Exception('Failed to delete data: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Data News Mahasiswa')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => NewsMahasiswaBaru()),
          );
        },
        backgroundColor: Constants.primaryColor,
        child: Icon(Icons.add),
      ),
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder<List<News>>(
              future: _getData(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(child: CircularProgressIndicator());
                } else if (snapshot.hasError) {
                  return Text('Error: ${snapshot.error}');
                } else if (snapshot.hasData) {
                  return ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) {
                      final post = snapshot.data![index];
                      return Card(
                        elevation: 5,
                        margin:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                        child: Row(
                          children: [
                            Expanded(
                              child: ListTile(
                                title: Text(post.title),
                                subtitle: Text(post.body),
                              ),
                            ),
                            IconButton(
                              icon: Icon(Icons.edit),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => NewsDetailMahasiswa(
                                      id: post.id,
                                    ),
                                  ),
                                );
                              },
                            ),
                            IconButton(
                              icon: Icon(Icons.delete),
                              onPressed: () {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      backgroundColor: Constants.primaryColor,
                                      title: Text("Delete"),
                                      content: Text(
                                          "Anda yakin ingin menghapus data ini?"),
                                      actions: [
                                        TextButton(
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                          child: Text(
                                            "Cancel",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16,
                                            ),
                                          ),
                                        ),
                                        TextButton(
                                          onPressed: () async {
                                            await _deleteData(post.id);
                                            Navigator.of(context).pop();
                                          },
                                          child: Text(
                                            "Delete",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16,
                                            ),
                                          ),
                                        ),
                                      ],
                                    );
                                  },
                                );
                              },
                            ),
                          ],
                        ),
                      );
                    },
                  );
                } else {
                  return Text('No data available');
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}