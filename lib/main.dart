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
      //       // body: _isiHalaman[_halamanAktif]["halaman"],
      // appBar: AppBar(
      //   title: Text(_isiHalaman[_halamanAktif]["title"]),
      // ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 10),
              Text('Pilih Bangun Datar', style: TextStyle(fontSize: 20)),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 100,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      border: Border.all(color: Colors.black, width: 2),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Persegi', style: TextStyle(fontSize: 16)),
                      ],
                    ),
                  ),
                  SizedBox(width: 50),
                  Container(
                    height: 100,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      border: Border.all(color: Colors.black, width: 2),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Persegi Panjang', style: TextStyle(fontSize: 16)),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 100,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      border: Border.all(color: Colors.black, width: 2),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Jejar', style: TextStyle(fontSize: 16)),
                        Text('Genjang', style: TextStyle(fontSize: 16)),
                      ],
                    ),
                  ),
                  SizedBox(width: 50),
                  Container(
                    height: 100,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      border: Border.all(color: Colors.black, width: 2),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Lingkaran', style: TextStyle(fontSize: 16)),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 100,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      border: Border.all(color: Colors.black, width: 2),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Segitiga', style: TextStyle(fontSize: 16)),
                        Text('Sama Kaki', style: TextStyle(fontSize: 16)),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),

);

  }
}
