// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:my_app/screens/routes/TanamanScreen/presenter_data.dart';
import 'package:intl/intl.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';

class InputTanaman extends StatefulWidget {
  final nanam tanaman;

  InputTanaman(this.tanaman);

  @override
  _InputTanamanState createState() => _InputTanamanState(this.tanaman);
}

class _InputTanamanState extends State<InputTanaman> {
  nanam tanaman;
  TextEditingController namaTanamanController = TextEditingController();
  TextEditingController jenisTanamanController = TextEditingController();
  TextEditingController tanggalMenanamController = TextEditingController();
  final format = DateFormat('yyyy-MM-dd');

  _InputTanamanState(this.tanaman);

  @override
  Widget build(BuildContext context) {
    namaTanamanController.text = tanaman.nama_tanaman;
    jenisTanamanController.text = tanaman.jenis_tanaman;
    tanggalMenanamController.text = tanaman.tanggal_menanam;

    return Scaffold(
      appBar: AppBar(
        title: Text("TambahkanTanaman"),
        leading: Icon(Icons.keyboard_arrow_left),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 15.0, left: 10.0, right: 10.0),
        child: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10.0),
              child: TextField(
                controller: namaTanamanController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: "Nama Tanaman",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(3.0),
                  ),
                ),
                onChanged: (value) {},
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: TextField(
                controller: jenisTanamanController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: "Jenis Tanaman",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(3.0),
                  ),
                ),
                onChanged: (value) {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: <Widget>[
                  DateTimeField(
                    controller: tanggalMenanamController,
                    format: format,
                    onShowPicker: (context, currentValue) {
                      return showDatePicker(
                        context: context,
                        firstDate: DateTime(2020),
                        initialDate: currentValue ?? DateTime.now(),
                        lastDate: DateTime(2045),
                      );
                    },
                    decoration: InputDecoration(
                      labelText: "Tanggal Menanam",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(3.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Theme.of(context).primaryColorLight,
                        backgroundColor: Theme.of(context).primaryColorDark,
                      ),
                      child: Text("Simpan", textScaleFactor: 1.5),
                      onPressed: () {
                        tanaman.nama_tanaman = namaTanamanController.text;
                        tanaman.jenis_tanaman = jenisTanamanController.text;
                        tanaman.tanggal_menanam = tanggalMenanamController.text;
                        print("Sudah di Update");
                        Navigator.pop(context, tanaman);
                      },
                    ),
                  ),
                  Container(width: 5.0),
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Theme.of(context).primaryColorLight,
                        backgroundColor: Theme.of(context).primaryColorDark,
                      ),
                      child: Text("Batal", textScaleFactor: 1.5),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
