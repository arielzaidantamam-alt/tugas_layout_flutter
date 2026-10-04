import 'package:flutter/material.dart';
import 'profile_card.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  final String nim = '20240801009';

  int _hitungSkorAktivitas(String nim) {
    final int duaDigitTerakhir = int.parse(
      nim.substring(nim.length - 2),
    );

    return duaDigitTerakhir + 90;
  }

  @override
  Widget build(BuildContext context) {
    final int digitTerakhir = int.parse(nim[nim.length - 1]);
    final bool isGanjil = digitTerakhir % 2 == 1;

    final Color scaffoldBackgroundColor =
        isGanjil
            ? Colors.tealAccent[100]!
            : Colors.amber[100]!;

    final int skorAktivitas = _hitungSkorAktivitas(nim);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tugas Layout Flutter',
      theme: ThemeData(
        scaffoldBackgroundColor: scaffoldBackgroundColor,
      ),
      home: HomePage(
        skorAktivitas: skorAktivitas,
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  final int skorAktivitas;

  const HomePage({
    super.key,
    required this.skorAktivitas,
  });

  @override
  Widget build(BuildContext context) {
    const String nama = 'Ariel Zaidan Tamam';
    const String nim = '20240801009';
    const String hobi = 'Game & Coding';

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ProfileCard(
            nama: nama,
            nim: nim,
            hobi: hobi,
            skorAktivitas: skorAktivitas,
          ),
        ),
      ),
    );
  }
}
