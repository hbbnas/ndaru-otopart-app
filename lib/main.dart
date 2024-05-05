import 'package:flutter/material.dart';
import 'package:ndaru_otopart_apps/home_page.dart';

void main() {
  runApp(const MyApp());
}

//Stateless Widget adalah widget yang berfungsi untuk menampilkan hal-hal yang sifatnya statis 
//mudahnya setelah data ditampilkan maka kita tidak akan merubahnya lagi.

class MyApp extends StatelessWidget {
  const MyApp({super.key});

//Container merupakan widget yang fungsinya untuk membungkus widget lain 
//sehingga dapat diberikan nilai seperti margin, padding, warna background, atau dekorasi.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

