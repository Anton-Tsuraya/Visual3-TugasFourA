import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter_application_7/Page/halaman_jajargenjang.dart';
import 'package:flutter_application_7/Page/halaman_lingkaran.dart';
import 'package:flutter_application_7/Page/halaman_persegi.dart';
import 'package:flutter_application_7/Page/halaman_persegipanjang.dart';
import 'package:flutter_application_7/Page/halaman_segitigasamakaki.dart';

void main() {
  runApp(const MaterialApp(
    home: MainPage(),
    debugShowCheckedModeBanner: false,
  ));
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final List _isiHalaman = [
    {"title": "Jejar Genjang", "halaman": Halamanjejargenjang()},
    {"title": "Lingkaran", "halaman": HalamanLingkaran()},
    {"title": "Persegi", "halaman": HalamanPersegi()},
    {"title": "Persegi Panjang", "halaman": HalamanPersegiPanjang()},
    {"title": "Segitiga Sama Kaki", "halaman": HalamanSegitigaSamaKaki()},

  ];

  int _halamanAktif = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _isiHalaman[_halamanAktif]["halaman"],
      appBar: AppBar(
        title: Text(_isiHalaman[_halamanAktif]["title"]),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              // leading: Icon(Icons.numbers),
              title: Text("Jejar Genjang"),
              trailing: Icon(Icons.arrow_right),
              onTap: () {
                setState(() {
                  _halamanAktif = 0;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              // leading: Icon(Icons.thermostat),
              title: Text("Lingkaran"),
              trailing: Icon(Icons.arrow_right),
              onTap: () {
                setState(() {
                  _halamanAktif = 1;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              // leading: Icon(Icons.square_foot),
              title: Text("Persegi"),
              trailing: Icon(Icons.arrow_right),
              onTap: () {
                setState(() {
                  _halamanAktif = 2;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              // leading: Icon(Icons.circle),
              title: Text("Persegi Panjang"),
              trailing: Icon(Icons.arrow_right),
              onTap: () {
                setState(() {
                  _halamanAktif = 3;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              // leading: Icon(Icons.circle),
              title: Text("Segitiga Sama Kaki"),
              trailing: Icon(Icons.arrow_right),
              onTap: () {
                setState(() {
                  _halamanAktif = 4;
                });
                Navigator.pop(context);
              },
            ),

            Divider(
              thickness: 1,
            ),
          ],
        ),
      ),
    );
  }
}
